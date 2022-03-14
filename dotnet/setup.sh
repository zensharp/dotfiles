#!/usr/bin/env bash

. ~/.dotfiles/dotnet/install.sh
. ~/.dotfiles/dotnet/load.sh

dotnet nuget add source "https://gitlab.com/api/v4/projects/29250253/packages/nuget/index.json" --name gitlab/andtech

if [ ! DOTFILES_LITE ]
then
	. ~/.dotfiles/dotnet/install-extras.sh
fi
