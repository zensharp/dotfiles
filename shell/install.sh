#!/usr/bin/env bash

mkdir -p ~/.local/bin
sudo apt update

# Shell
## ZSH
sudo apt install -y zsh
sudo chsh --shell $(which zsh) $(whoami)

# Frameworks
## NodeJS
sudo apt install -y npm nodejs
## Python
sudo apt install -y python3-pip
## .NET
~/dotfiles/dotnet/install.sh
~/dotfiles/dotnet/apply.sh

# Applications
## Micro
~/dotfiles/micro/install.sh
~/dotfiles/micro/apply.sh
## Sift
~/dotfiles/sift/install.sh
~/dotfiles/sift/apply.sh
## Starship
~/dotfiles/starship/install.sh
~/dotfiles/starship/apply.sh
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

# Extras
sudo apt install -y unzip
sudo apt install -y tree
sudo apt install -y neofetch
sudo apt install -y autojump
sudo npm install --global clipboard-cli
sudo npm install --global undollar
sudo npm install --global live-server
pip install spotify-cli
