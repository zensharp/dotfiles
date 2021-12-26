#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt -qq update
sudo apt -qq install -y bat
ln --symbolic $(which batcat) ~/.local/bin/bat
