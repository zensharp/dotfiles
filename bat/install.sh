#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt-fast -qq update
sudo apt-fast -qq install -y bat
ln --symbolic $(which batcat) ~/.local/bin/bat
