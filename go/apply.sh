#!/usr/bin/env bash

cat ~/dotfiles/go/env >> ~/.zshenv
cat ~/dotfiles/go/interactive >> ~/.zshrc
cat ~/dotfiles/go/login >> ~/.zlogin
. ~/dotfiles/go/env
. ~/dotfiles/go/interactive
. ~/dotfiles/go/login
