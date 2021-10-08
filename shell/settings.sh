#!/usr/bin/env bash

mkdir -p ~/.local/bin
mkdir -p ~/.config

cp ~/dotfiles/templates/shell/zshenv ~/.zshenv
cp ~/dotfiles/templates/shell/zshrc ~/.zshrc
cp ~/dotfiles/templates/shell/zlogin ~/.zlogin
cp --recursive ~/dotfiles/micro/. ~/.config/micro/
cp --recursive ~/dotfiles/starship/. ~/.config/
cp ~/dotfiles/templates/.gitconfig ~/
