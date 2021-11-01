$dotfilesRoot = $MyInvocation.MyCommand.Path
$dotfilesRoot = Split-Path $MyInvocation.MyCommand.Path

$dotfilesRoot/vscode/save.sh
$dotfilesRoot/windows-terminal/save.sh
$dotfilesRoot/ueli/save.sh
