#!/usr/bin/env bash

mkdir -p ~/.local/bin

~/dotfiles/micro/install.sh
~/dotfiles/sift/install.sh

# Essentials
sudo apt install -y tree
sudo apt install -y neofetch
sudo apt install -y autojump
sudo apt install -y unzip
sudo npm install --global undollar
sudo npm install --global clipboard-cli
sudo npm install --global live-server
## FD
sudo apt install -y fd-find
ln --symbolic $(which fdfind) ~/.local/bin/fd
## Delta
wget --output-document delta.deb https://github.com/dandavison/delta/releases/download/0.8.3/git-delta_0.8.3_amd64.deb
sudo dpkg --install delta.deb
rm delta.deb
## Bat
sudo apt install -y bat
ln --symbolic $(which batcat) ~/.local/bin/bat
