#!/usr/bin/env bash

sudo apt update
sudo apt install -y zsh
chsh -s $(which zsh)

. ~/dotfiles/templates/core/setup.sh

exec zsh
