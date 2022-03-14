#!/usr/bin/env bash

echo '. ~/.dotfiles/shell/env' >> ~/.zshenv
echo '. ~/.dotfiles/shell/interactive' >> ~/.zshrc
echo '. ~/.dotfiles/shell/login' >> ~/.zlogin
. ~/.dotfiles/shell/env
. ~/.dotfiles/shell/interactive
. ~/.dotfiles/shell/login
