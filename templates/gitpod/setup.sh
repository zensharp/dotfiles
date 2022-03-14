#!/usr/bin/env bash

. ~/.dotfiles/shell/load.sh
. ~/.dotfiles/zsh/install.sh
##. ~/.dotfiles/node/install.sh
if [ ! DOTFILES_LITE ]
then
	. ~/.dotfiles/dotnet/install.sh
	##. ~/.dotfiles/micro/install.sh
	. ~/.dotfiles/git/install.sh
	. ~/.dotfiles/bat/install.sh
	. ~/.dotfiles/delta/install.sh
	. ~/.dotfiles/fd-find/install.sh
	. ~/.dotfiles/sd/install.sh
	. ~/.dotfiles/sift/install.sh
	. ~/.dotfiles/starship/install.sh
	#. ~/.dotfiles/misc/install.sh
	#. ~/.dotfiles/python/install.sh
fi

exec zsh
