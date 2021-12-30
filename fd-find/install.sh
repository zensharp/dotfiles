#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt-fast -qq update
sudo apt-fast -qq install -y fd-find
ln --symbolic $(which fdfind) ~/.local/bin/fd
