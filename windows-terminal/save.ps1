$settingsRoot = $MyInvocation.MyCommand.Path
$settingsRoot = Split-Path $MyInvocation.MyCommand.Path

Copy-Item -Recurse -Force "$env:LOCALAPPDATA/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json" "$settingsRoot/" 
