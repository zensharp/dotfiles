#!/usr/bin/env bash

export DOTNET_ROOT=$HOME/dotnet
mkdir -p $DOTNET_ROOT
curl -fsSL "https://dot.net/v1/dotnet-install.sh" | bash /dev/stdin --channel Current --install-dir $DOTNET_ROOT
. ~/.dotfiles/dotnet/load.sh

dotnet nuget add source "https://gitlab.com/api/v4/projects/29250253/packages/nuget/index.json" --name gitlab/andtech
