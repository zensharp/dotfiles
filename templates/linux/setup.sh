#!/usr/bin/env bash

. ~/.dotfiles/shell/setup.sh
. ~/.dotfiles/zsh/install.sh
. ~/.dotfiles/git/setup.sh
. ~/.dotfiles/micro/install.sh
. ~/.dotfiles/starship/install.sh
. ~/.dotfiles/sift/install.sh
. ~/.dotfiles/fd-find/install.sh
. ~/.dotfiles/delta/install.sh
. ~/.dotfiles/exa/setup.sh

if [ ! DOTFILES_LITE ]
then
	. ~/.dotfiles/bat/install.sh
	. ~/.dotfiles/sd/install.sh
	. ~/.dotfiles/node/install.sh
	. ~/.dotfiles/python/install.sh
	. ~/.dotfiles/dotnet/install.sh
	. ~/.dotfiles/dotnet/install-extras.sh
	. ~/.dotfiles/misc/install.sh
fi

. ~/.dotfiles/linux/load.sh
