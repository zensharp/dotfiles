#!/usr/bin/env bash

OS="$(uname -s | tr '[:upper:]' '[:lower:]')"
PLATFORM=$OS
case "$OS" in
	'linux')
		if [[ -n "$IS_WSL" || -n "$WSL_DISTRO_NAME" ]]
		then
			PLATFORM='wsl'
		elif [[ -n "$GITPOD_WORKSPACE_ID" ]]
		then
			PLATFORM='gitpod'
		fi
		;;
	'darwin')
		PLATFORM='mac'
		;;
esac

echo "OS=$OS" > "$HOME/.dotrc"
echo "PLATFORM=$PLATFORM" >> "$HOME/.dotrc"
