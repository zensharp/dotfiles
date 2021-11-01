#!/usr/bin/env bash

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
wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0

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
sudo apt install -y tree
sudo apt install -y neofetch
sudo apt install -y autojump
sudo npm install --global clipboard-cli
sudo npm install --global undollar
sudo npm install --global live-server
pip install spotify-cli
