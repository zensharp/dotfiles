#!/usr/bin/env bash

git clone https://gitlab.com/andtech/dotfiles ~/dotfiles
~/dotfiles/templates/gitpod/setup.sh
~/dotfiles/git/apply
~/dotfiles/starship/install.sh
~/dotfiles/starship/apply.sh
