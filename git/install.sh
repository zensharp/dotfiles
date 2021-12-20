#!/usr/bin/env bash

mkdir -p ~/.local/bin

git clone https://github.com/AndrewMJordan/git-tools ~/.local/bin/git-tools
~/dotfiles/git/apply.sh
