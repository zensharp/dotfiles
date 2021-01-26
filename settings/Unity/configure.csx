#!/usr/bin/env dotnet-script

// Just use powershell with admin

new SettingsCopier("Unity Editor Template").Run();

public class SettingsCopier {
	private string Source { get; set; }

	static readonly string INSTALL_LOCATION_WIN = "C:/Program Files/Unity/Hub/Editor";
	static readonly string INSTALL_LOCATION_WSL = "/mnt/c/Program Files/Unity/Hub/Editor";

	public SettingsCopier(string source) {
		Source = source;
	}

	public void Run() {
		var installs = Directory.EnumerateDirectories(INSTALL_LOCATION_WIN);
		foreach (var install in installs) {
			var editorVersion = Path.GetFileName(install);

			Transfer(install);

			Console.ForegroundColor = ConsoleColor.Green;
			Console.WriteLine($"Successfully configured {editorVersion}");
			Console.ForegroundColor = ConsoleColor.White;
		}
	}

	void Transfer(string destination) {
		var files = Directory.EnumerateFiles(Source, "*", SearchOption.AllDirectories);
		foreach (var path in files) {
			var relativePath = Path.GetRelativePath(Source, path);

			var dest = Path.Combine(destination, relativePath);
			File.Copy(path, dest, true);
		}
	}
}

