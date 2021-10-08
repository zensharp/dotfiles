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
curl https://getmic.ro | bash
sudo mv micro /usr/bin
## FD
sudo apt install -y fd-find
ln --symbolic $(which fdfind) ~/.local/bin/fd
## Sift
curl https://sift-tool.org/downloads/sift/sift_latest_linux_amd64.tar.gz | tar -xz
cp sift_*/sift ~/.local/bin/sift
## Delta
wget --output-document delta.deb https://github.com/dandavison/delta/releases/download/0.8.3/git-delta_0.8.3_amd64.deb
sudo dpkg --install delta.deb
rm delta.deb
## Bat
sudo apt install -y bat
ln --symbolic $(which batcat) ~/.local/bin/bat
## Starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- -y

# Extras
sudo apt install -y tree
sudo apt install -y neofetch
sudo apt install -y autojump
sudo npm install --global clipboard-cli
sudo npm install --global live-server
pip install spotify-cli
