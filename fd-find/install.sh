#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt -qq update
sudo apt -qqy install fd-find
ln --symbolic $(which fdfind) ~/.local/bin/fd
