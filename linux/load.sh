#!/usr/bin/env bash

echo '. ~/.dotfiles/linux/env' >> ~/.zshenv
echo '. ~/.dotfiles/linux/interactive' >> ~/.zshrc
echo '. ~/.dotfiles/linux/login' >> ~/.zlogin
. ~/.dotfiles/linux/env
. ~/.dotfiles/linux/interactive
. ~/.dotfiles/linux/login
