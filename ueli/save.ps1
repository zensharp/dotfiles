$settingsRoot = $MyInvocation.MyCommand.Path
$settingsRoot = Split-Path $MyInvocation.MyCommand.Path

Copy-Item -Recurse -Force "$env:APPDATA/ueli" "$settingsRoot/config.json"
