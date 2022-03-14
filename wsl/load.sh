#!/usr/bin/env bash

echo '. ~/.dotfiles/wsl/env' >> ~/.zshenv
echo '. ~/.dotfiles/wsl/interactive' >> ~/.zshrc
echo '. ~/.dotfiles/wsl/login' >> ~/.zlogin
. ~/.dotfiles/wsl/env
. ~/.dotfiles/wsl/interactive
. ~/.dotfiles/wsl/login
