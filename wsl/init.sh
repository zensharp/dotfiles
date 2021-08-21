#!/usr/bin/env bash

echo "Reading Windows environment variables..."
appData=$(wslvar AppData)
localAppData=$(wslvar LocalAppData)
userProfile=$(wslvar UserProfile)

mklink()
{
	src=$(realpath "$1")
	dest=$(wslpath "$2")
	dir=$(dirname $dest)

	mkdir --parents $dir
	command="ln --symbolic $src $dest"
	if [ $1 != "--dry-run" ]; then
		echo "[DRY RUN] Would execute:"
		echo $command
	else
		echo $command
		#eval $command
	fi
}

mklink "ueli/config.json" "$appData/ueli"
mklink "windows-terminal/settings.json" "$localAppData/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState"
mklink "code/settings.json" "$appData/Code/User"
mklink ".atom" "$userProfile"
