#!/usr/bin/env bash

mkdir -p ~/.local/bin/apt-fast

curl -sL "https://git.io/vokNn" | bash
ln -s $(which apt-fast) ~/.local/bin/apt-fast/apt
ln -s $(which apt-fast) ~/.local/bin/apt-fast/apt-get

. ~/dotfiles/apt-fast/load.sh
