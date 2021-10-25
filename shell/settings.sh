#!/usr/bin/env bash

cp ~/dotfiles/templates/shell/zshenv ~/.zshenv
cp ~/dotfiles/templates/shell/zshrc ~/.zshrc
cp ~/dotfiles/templates/shell/zlogin ~/.zlogin

~/dotfiles/git/settings.sh
~/dotfiles/micro/settings.sh
~/dotfiles/starship/settings.sh
~/dotfiles/sift/settings.sh
