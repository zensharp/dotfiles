#!/usr/bin/env bash

echo '. ~/.dotfiles/macos/env' >> ~/.zshenv
echo '. ~/.dotfiles/macos/interactive' >> ~/.zshrc
echo '. ~/.dotfiles/macos/login' >> ~/.zlogin
. ~/.dotfiles/macos/env
. ~/.dotfiles/macos/interactive
. ~/.dotfiles/macos/login
