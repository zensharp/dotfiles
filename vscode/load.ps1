$settingsRoot = $MyInvocation.MyCommand.Path
$settingsRoot = Split-Path $MyInvocation.MyCommand.Path

Copy-Item -Recurse -Force "$settingsRoot/settings.json" "$env:APPDATA/Code/User/"
