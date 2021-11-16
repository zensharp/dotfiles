$settingsRoot = $MyInvocation.MyCommand.Path
$settingsRoot = Split-Path $MyInvocation.MyCommand.Path

Copy-Item -Recurse -Force "$settingsRoot/gzdoom_portable.ini" "$env:LOCALAPPDATA/Programs/gzdoom/"
