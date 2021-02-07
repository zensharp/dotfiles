# Auto Setup

## Quick Start (Experimental)

1. Install WSL.
2. Run `windows/winget-all.ps1` in Powershell as administrator.

3. Run

```
$ windows/wsl/init.sh
```

4. Run

```
$ settings/apply.sh
```

## Instructions
1. Rename computer.
2. Restart.
3. Open Powershell as Administrator.
4. Generate SSH keys.
5. Configure global git credentials.
6. Add SSH keys to GitHub account.
7. Clone the [Auto Setup](https://github.com/AndrewMJordan/auto-config) repository.
8. Activate WSL.
	- [Install WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
9. Install [App Installer](https://www.microsoft.com/en-us/p/app-installer/9nblggh4nns1?activetab=pivot:overviewtab) from Microsoft Store.
10. Install WinGet.
	- Use the [GitHub Release](https://github.com/microsoft/winget-cli/releases).
11. Run `windows/winget-all.ps1`.
12. Install remaining programs manually.
13. Restart.
14. Login to Ubuntu.
15. Make sure wslvar (included with wslu) and wslpath are installed.
16. Run `windows/wsl/init.sh`.
17. Terminate WSL.
18. Open Windows Terminal as Administrator.
19. Run `settings/apply.sh`.
    - Manually apply Visual Studio (IDE) settings.
20. Install .NET SDK(s).
    - [Winget installation](https://winget.run/pkg/Microsoft/dotnet)
    - [Manual installation](https://github.com/microsoft/winget-cli/releases)

### Not Installable Through Winget
You will need to manually install these programs:
- [Nuclino](https://www.nuclino.com/download)
- [Affinity Designer](https://store.serif.com/en-us/download/corporate/trial/)
- [FL Studio](https://www.image-line.com/fl-studio-download/)
- [Windows Terminal Context Menu](https://github.com/kerol2r20/Windows-terminal-context-menu)
- [WinFF](https://github.com/WinFF/winff)
- [Chocolatey](https://chocolatey.org/docs/installation)
