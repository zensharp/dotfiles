#!/usr/bin/env bash

sudo apt update

~/dotfiles/shell/apply.sh
~/dotfiles/zsh/install.sh
~/dotfiles/nodejs/install.sh
~/dotfiles/micro/install.sh
~/dotfiles/sift/install.sh
~/dotfiles/misc/install.sh
~/dotfiles/git/install.sh
~/dotfiles/starship/install.sh
~/dotfiles/python/install.sh
~/dotfiles/wsl/apply.sh
echo '#export XDG_REPOS_DIR="/mnt/c/users/andrew/repos"' >> ~/.zshenv
echo '#export XDG_MUSIC_DIR="/mnt/c/users/andrew/music"' >> ~/.zshenv
echo '#export XDG_DOWNLOAD_DIR="/mnt/c/users/andrew/downloads"' >> ~/.zshenv
