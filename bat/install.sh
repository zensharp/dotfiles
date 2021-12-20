#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt install -y bat
ln --symbolic $(which batcat) ~/.local/bin/bat
