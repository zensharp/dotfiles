#!/usr/bin/env bash

sudo apt -qq update
sudo apt -qq install -y zsh
sudo chsh --shell $(which zsh) $(whoami)
. ~/.dotfiles/zsh/load.sh
