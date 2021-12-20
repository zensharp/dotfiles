#!/usr/bin/env bash

sudo apt update

~/dotfiles/shell/apply.sh
~/dotfiles/zsh/install.sh
~/dotfiles/misc/install.sh
~/dotfiles/git/install.sh
~/dotfiles/starship/install.sh
~/dotfiles/nodejs/install.sh
~/dotfiles/python/install.sh
~/dotfiles/linux/apply.sh
echo '#export XDG_REPOS_DIR="$HOME/repos"' >> ~/.zshenv
echo '#export XDG_MUSIC_DIR="$HOME/music"' >> ~/.zshenv
echo '#export XDG_DOWNLOAD_DIR="$HOME/downloads"' >> ~/.zshenv
