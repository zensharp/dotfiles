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

if [ ! $DOTFILES_LITE ]
then
	. ~/.dotfiles/bat/setup.sh
	. ~/.dotfiles/sd/setup.sh
	. ~/.dotfiles/node/setup.sh
	. ~/.dotfiles/python/setup.sh
	. ~/.dotfiles/dotnet/setup.sh
	. ~/.dotfiles/misc/setup.sh
fi

. ~/.dotfiles/macos/setup.sh

exec zsh
