#!/usr/bin/env bash

# Setup profiles
echo '. $HOME/dotfiles/templates/gitpod/zshrc' >> $HOME/.zshrc
echo '. $HOME/dotfiles/templates/gitpod/zshenv' >> $HOME/.zshenv

# Setup git
git config --global "include.path" "~/dotfiles/git/gitconfig"

# Install starship
curl https://get.zensharp.net/starship | bash
~/dotfiles/starship/load.sh

# Install zoxide
curl https://get.zensharp.net/zoxide | bash

# Install micro
brew install micro
~/dotfiles/micro/load.sh

# Install eza
sudo apt update
sudo apt install -y gpg
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza

# Install delta
brew install git-delta
