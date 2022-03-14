#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt-get -qq update
sudo apt-get -qq install -y fd-find
ln --symbolic $(which fdfind) ~/.local/bin/fd
