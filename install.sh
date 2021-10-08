#!/usr/bin/env bash

mkdir -p ~/.local/bin
mkdir -p ~/.config
sudo apt update

# Tree
sudo apt install -y tree

# Neofetch
sudo apt install -y neofetch

# Autojump
sudo apt install -y autojump

# Starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- -y

# FD
sudo apt install -y fd-find
ln --symbolic $(which fdfind) ~/.local/bin/fd

# Micro
curl https://getmic.ro | bash
sudo mv micro /usr/bin
cp ~/dotfiles/micro/settings.json ~/.config/micro/

# Sift
curl https://sift-tool.org/downloads/sift/sift_latest_linux_amd64.tar.gz | tar -xz
cp sift_*/sift ~/.local/bin/sift

# Delta
wget --output-document delta.deb https://github.com/dandavison/delta/releases/download/0.8.3/git-delta_0.8.3_amd64.deb
sudo dpkg --install delta.deb
rm delta.deb

# Bat
sudo apt install -y bat
ln -s $(which batcat) ~/.local/bin/bat

# Zshell
sudo apt install -y zsh
sudo chsh --shell $(which zsh) $(whoami)

# Python
#sudo apt install -y python3-pip

# Spotify CLI
pip install spotify-cli

# WSL
pip3 install --user --upgrade pip
pip install --user git+https://github.com/cpbotha/xdg-open-wsl.git

# NodeJS
sudo apt install -y npm nodejs

# Dotnet
wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0

# Profile
cp --recursive ~/dotfiles/micro/. ~/.config/micro/
cp --recursive ~/dotfiles/templates/wsl/. ~/
cp ~/dotfiles/templates/.gitconfig ~/
cp ~/dotfiles/starship/starship.toml ~/.config/
