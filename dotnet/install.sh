#!/usr/bin/env bash

export DOTNET_ROOT=$HOME/.dotnet
wget -O "$DOTNET_ROOT/dotnet-install.sh" https://dot.net/v1/dotnet-install.sh
chmod +x "$DOTNET_ROOT/dotnet-install.sh"
"$DOTNET_ROOT/dotnet-install.sh" --channel 6.0
export $PATH=$PATH:$DOTNET_ROOT
