#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt -qq update
sudo apt -qq install -y fd-find
ln --symbolic $(which fdfind) ~/.local/bin/fd
