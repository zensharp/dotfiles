#!/usr/bin/env bash

echo '. ~/.dotfiles/exa/env' >> ~/.zshenv
echo '. ~/.dotfiles/exa/interactive' >> ~/.zshrc
echo '. ~/.dotfiles/exa/login' >> ~/.zlogin
. ~/.dotfiles/exa/env
. ~/.dotfiles/exa/interactive
. ~/.dotfiles/exa/login
