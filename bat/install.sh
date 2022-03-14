#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt-get -qq update
sudo apt-get -qq install -y bat
ln --symbolic $(which batcat) ~/.local/bin/bat
