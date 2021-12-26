#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt install -y batcat
ln --symbolic $(which batcat) ~/.local/bin/bat
