#!/usr/bin/env bash

# WSL Utilities
sudo apt install gnupg2 apt-transport-https
wget -O - https://pkg.wslutiliti.es/public.key | sudo tee -a /etc/apt/trusted.gpg.d/wslu.asc
echo "deb https://pkg.wslutiliti.es/debian bullseye main" | sudo tee -a /etc/apt/sources.list
sudo apt update
sudo apt install wslu

# Misc
pip3 install --user --upgrade pip
pip install --user 'git+https://github.com/cpbotha/xdg-open-wsl.git'
