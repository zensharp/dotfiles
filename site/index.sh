#!/usr/bin/env bash

echo "WARNING: Only Gitpod installation is supported!"
git clone https://gitlab.com/andtech/dotfiles.git ~/dotfiles
~/dotfiles/templates/gitpod/setup.sh
