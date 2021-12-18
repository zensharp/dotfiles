#!/usr/bin/env bash

set -e

platform=''
case "$(uname -s | tr '[:upper:]' '[:lower:]')" in
	'linux')
		if [[ -n "$IS_WSL" || -n "$WSL_DISTRO_NAME" ]]
		then
			platform='wsl'
		elif [[ -n "$GITPOD_WORKSPACE_ID" ]]
		then
			platform='gitpod'
		else
			platform='linux'
		fi
		;;
	'darwin')
		platform='macos'
		;;
	*)
		platform="unknown"
		;;
esac

if [ "x$platform" = "x" ]; then
	echo "[ERROR] Unsupported platform: $platform"
	exit 1
fi	

echo "Using platform '$platform'..."
exit
case $platform in
	'gitpod')
		~/dotfiles/templates/gitpod/setup.sh
		;;
	*)
		echo "ERROR: Only Gitpod installation is supported!"
		echo "Dotfiles must be manually setup"

		#~/dotfiles/shell/install.sh
		#~/dotfiles/templates/linux/setup.sh

		#~/dotfiles/git/apply.sh
		#~/dotfiles/starship/apply.sh
		;;
esac
