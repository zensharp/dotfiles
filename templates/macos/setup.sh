#!/usr/bin/env bash

. ~/.dotfiles/shell/setup.sh
. ~/.dotfiles/zsh/setup.sh
. ~/.dotfiles/git/setup.sh
. ~/.dotfiles/micro/setup.sh
. ~/.dotfiles/starship/setup.sh
. ~/.dotfiles/sift/setup.sh
. ~/.dotfiles/fd-find/setup.sh
. ~/.dotfiles/delta/setup.sh
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

. ~/.dotfiles/macos/load.sh
