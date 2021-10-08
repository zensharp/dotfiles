#!/usr/bin/env bash

## xdg-open
pip3 install --user --upgrade pip
pip install --user 'git+https://github.com/cpbotha/xdg-open-wsl.git'

# Dotfiles
cat ~/dotfiles/templates/wsl/.zshenv >> ~/.zshenv
cat ~/dotfiles/templates/wsl/.zshrc >> ~/.zshrc
cat ~/dotfiles/templates/wsl/.zlogin >> ~/.zlogin
