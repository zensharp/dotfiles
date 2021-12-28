#!/usr/bin/env bash
~/dotfiles/apt-fast/install.sh
~/dotfiles/shell/apply.sh
~/dotfiles/zsh/install.sh
~/dotfiles/node/install.sh
~/dotfiles/dotnet/install.sh
~/dotfiles/micro/install.sh
~/dotfiles/git/install.sh
~/dotfiles/bat/install.sh
~/dotfiles/delta/install.sh
~/dotfiles/fd-find/install.sh
~/dotfiles/sd/install.sh
~/dotfiles/sift/install.sh
~/dotfiles/starship/install.sh
~/dotfiles/misc/install.sh
~/dotfiles/python/install.sh
~/dotfiles/wsl/install.sh
echo '#export XDG_REPOS_DIR="/mnt/c/users/andrew/repos"' >> ~/.zshenv
echo '#export XDG_MUSIC_DIR="/mnt/c/users/andrew/music"' >> ~/.zshenv
echo '#export XDG_DOWNLOAD_DIR="/mnt/c/users/andrew/downloads"' >> ~/.zshenv

~/dotfiles/dotnet/install-extras.sh
