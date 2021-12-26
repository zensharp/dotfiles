#!/usr/bin/env bash

pip3 install --user --upgrade pip
pip install --user 'git+https://github.com/cpbotha/xdg-open-wsl.git'
~/dotfiles/wsl/apply.sh
