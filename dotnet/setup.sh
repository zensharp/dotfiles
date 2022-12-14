#!/usr/bin/env bash

# Install SDK
wget https://packages.microsoft.com/config/ubuntu/22.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update
sudo apt-get install -y dotnet-sdk-7.0
sudo apt-get install -y dotnet-sdk-6.0

# Misc
. ~/.dotfiles/dotnet/load.sh

dotnet nuget add source "https://gitlab.com/api/v4/projects/29250253/packages/nuget/index.json" --name gitlab/andtech

if [ ! $DOTFILES_LITE ]
then
	. ~/.dotfiles/dotnet/install-extras.sh
fi
