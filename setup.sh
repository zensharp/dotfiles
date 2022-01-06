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

if [[ "$platform" == "unknown" ]]; then
	echo "[ERROR] Unsupported platform: $platform"
	exit 1
fi	

echo -e "\033[0;36mSetting up dotfiles for platform '$platform'...\033[0m"

ln -s "$HOME/.dotfiles" "$HOME/dotfiles"
time "$HOME/.dotfiles/templates/$platform/setup.sh"
