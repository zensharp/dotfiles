#!/usr/bin/env bash

echo '. ~/.dotfiles/dotnet/env' >> ~/.zshenv
echo '. ~/.dotfiles/dotnet/interactive' >> ~/.zshrc
echo '. ~/.dotfiles/dotnet/login' >> ~/.zlogin
. ~/.dotfiles/dotnet/env
. ~/.dotfiles/dotnet/interactive
. ~/.dotfiles/dotnet/login
