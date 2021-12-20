#!/usr/bin/env bash

mkdir -p ~/.local/bin

sudo apt install -y fd-find
ln --symbolic $(which fdfind) ~/.local/bin/fd
