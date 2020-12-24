using System;
using System.IO;
using System.Net;
using Ionic.Zip;

namespace update
{
	internal class Program
	{
		private static void Main()
		{
			try { Directory.Delete("Bit.Trip_Editor-master", true); }
			catch { }
			Console.WriteLine("Downloading latest files...");
			using (WebClient webClient = new WebClient())
			{
				webClient.Proxy = null;
				webClient.Headers.Add("user-agent", "Anything");
				ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
				webClient.DownloadFile("https://github.com/donnaken15/Bit.Trip_Editor/archive/master.zip", "newpkg.zip");
			}
			Console.WriteLine("Extracting GitHub Master ZIP...");
			using (ZipFile zipFile = new ZipFile("newpkg.zip"))
			{
				zipFile.ExtractAll(Directory.GetCurrentDirectory(), ExtractExistingFileAction.OverwriteSilently);
			}
			Console.WriteLine("Moving files...");
			foreach (string text in Directory.GetFiles("Bit.Trip_Editor-master"))
			{
				if (!text.Contains("settings.ini"))
				{
					Console.WriteLine(text);
					try
					{
						if (File.Exists(Directory.GetCurrentDirectory() + "\\" + Path.GetFileName(text)))
						{
							File.Delete(Directory.GetCurrentDirectory() + "\\" + Path.GetFileName(text));
						}
					}
					catch { }
					Console.WriteLine("-> " + Directory.GetCurrentDirectory() + "\\" + Path.GetFileName(text));
					try { File.Move(text, Directory.GetCurrentDirectory() + "\\" + Path.GetFileName(text)); }
					catch { Console.WriteLine("Error moving, assuming file exists"); }
				}
			}
			Console.WriteLine("Moving folders...");
			foreach (string text2 in Directory.GetDirectories("Bit.Trip_Editor-master"))
			{
				Console.WriteLine(text2);
				if (Directory.Exists(Directory.GetCurrentDirectory() + text2.Replace("Bit.Trip_Editor-master", "")))
				{
					Directory.Delete(Directory.GetCurrentDirectory() + text2.Replace("Bit.Trip_Editor-master", ""), true);
				}
				Console.WriteLine("-> " + Directory.GetCurrentDirectory() + text2.Replace("Bit.Trip_Editor-master", ""));
				Directory.Move(text2, Directory.GetCurrentDirectory() + text2.Replace("Bit.Trip_Editor-master", ""));
			}
			try { Directory.Delete("Bit.Trip_Editor-master", true); } catch { }
			Console.WriteLine("Deleting ZIP...");
			File.Delete("newpkg.zip");
		}
	}
}
