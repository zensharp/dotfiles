#!/usr/bin/env bash

if [ $DOTFILES_SKIP ]
then
	echo -e "\033[0;35mSkipping dotfiles!\033[0m"
	exit 0
fi

# Begin code
DOTFILES_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
git submodule update --init
if [ ! -d "$HOME/dotfiles" ]; then
    ln -s $DOTFILES_DIR $HOME/dotfiles
fi
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
     "gitpod")
		  ~/dotfiles/templates/gitpod/setup.sh
		  ;;
esac
