#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt -qq update
sudo apt -qqy install batcat
ln --symbolic $(which batcat) ~/.local/bin/bat
