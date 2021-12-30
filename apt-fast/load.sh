#!/usr/bin/env bash

echo '. ~/dotfiles/apt-fast/env' >> ~/.zshenv
echo '. ~/dotfiles/apt-fast/interactive' >> ~/.zshrc
echo '. ~/dotfiles/apt-fast/login' >> ~/.zlogin
. ~/dotfiles/apt-fast/env
. ~/dotfiles/apt-fast/interactive
. ~/dotfiles/apt-fast/login