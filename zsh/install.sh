#!/usr/bin/env bash

sudo apt -qq update
sudo apt -qqy install zsh
sudo chsh --shell $(which zsh) $(whoami)
~/dotfiles/zsh/apply.sh
