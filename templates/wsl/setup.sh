#!/usr/bin/env bash

~/dotfiles/shell/install.sh
~/dotfiles/shell/apply.sh
~/dotfiles/zsh/apply.sh
~/dotfiles/wsl/apply.sh
~/dotfiles/git/apply.sh
~/dotfiles/starship/apply.sh
echo '#export XDG_REPOS_DIR="/mnt/c/users/andrew/repos"' >> ~/.zshenv
echo '#export XDG_MUSIC_DIR="/mnt/c/users/andrew/music"' >> ~/.zshenv
echo '#export XDG_DOWNLOAD_DIR="/mnt/c/users/andrew/downloads"' >> ~/.zshenv
