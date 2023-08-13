#!/usr/bin/env bash

if [ $DOTFILES_SKIP ]
then
	echo -e "\033[0;35mSkipping dotfiles!\033[0m"
	exit 0
fi

# Environment
. ~/dotfiles/scripts/dotinfo.sh
echo -e "\033[0;36mInstalling dotfiles for platform '$PLATFORM' ($OS)...\033[0m"
case "$PLATFORM" in
    "mac")
		~/dotfiles/templates/mac/setup.sh
        ;;
    "linux")
		~/dotfiles/templates/ubuntu/setup.sh
        ;;
    "wsl")
		~/dotfiles/templates/wsl/setup.sh
        ;;
esac
