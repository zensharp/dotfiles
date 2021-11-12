#!/usr/bin/env bash

git clone https://gitlab.com/andtech/dotfiles ~/dotfiles
~/dotfiles/templates/gitpod/setup.sh
~/dotfiles/git/apply.sh
~/dotfiles/starship/install.sh
~/dotfiles/starship/apply.sh
