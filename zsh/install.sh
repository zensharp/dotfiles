#!/usr/bin/env bash

sudo apt-fast -qq update
sudo apt-fast -qq install -y zsh
sudo chsh --shell $(which zsh) $(whoami)
. ~/dotfiles/zsh/load.sh
