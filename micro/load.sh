#!/usr/bin/env bash

mkdir -p ~/.config/micro
cp ~/dotfiles/micro/settings.json ~/.config/micro/
cp ~/dotfiles/micro/bindings.json ~/.config/micro/

cp -r ~/dotfiles/micro/syntax ~/.config/micro/
cp -r ~/dotfiles/micro/colorschemes ~/.config/micro/
