#!/usr/bin/env bash

export DOTNET_ROOT=$HOME/dotnet
mkdir -p $DOTNET_ROOT
curl -fsSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel Current --install-dir $DOTNET_ROOT
export $PATH=$PATH:$DOTNET_ROOT
