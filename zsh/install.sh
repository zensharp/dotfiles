#!/usr/bin/env bash

sudo apt install -y zsh
sudo chsh --shell $(which zsh) $(whoami)
~/dotfiles/zsh/apply.sh
