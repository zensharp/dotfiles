$dotfiles = "$env:USERPROFILE\.dotfiles"

Copy-Item -Recurse -Force $dotfiles/ueli $env:APPDATA/euli
Copy-Item -Recurse -Force $dotfiles/windows-terminal/* $env:LOCALAPPDATA/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState
Copy-Item -Recurse -Force $dotfiles/vscode $env:APPDATA/Code/User
Copy-Item -Recurse -Force $dotfiles/atom $env:USERPROFILE/.atom
