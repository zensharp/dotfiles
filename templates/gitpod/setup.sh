#!/usr/bin/env bash

. ~/.dotfiles/shell/setup.sh
. ~/.dotfiles/zsh/setup.sh
. ~/.dotfiles/git/setup.sh
##. ~/.dotfiles/micro/setup.sh					# not supported in browser
. ~/.dotfiles/starship/setup.sh
. ~/.dotfiles/sift/install.sh
. ~/.dotfiles/fd-find/install.sh
. ~/.dotfiles/delta/install.sh
. ~/.dotfiles/exa/setup.sh

if [ ! DOTFILES_LITE ]
then
	. ~/.dotfiles/bat/install.sh
	. ~/.dotfiles/sd/install.sh
	##. ~/.dotfiles/node/install.sh				# already included in 'gitpod/workspace-full'
	##. ~/.dotfiles/python/install.sh			# already included in 'gitpod/workspace-full'
	. ~/.dotfiles/dotnet/install.sh
	. ~/.dotfiles/dotnet/install-extras.sh
	. ~/.dotfiles/misc/install.sh
fi

exec zsh
