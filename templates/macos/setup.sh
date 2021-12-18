#!/usr/bin/env bash

~/dotfiles/shell/apply.sh
~/dotfiles/zsh/apply.sh
~/dotfiles/macos/apply.sh
echo '#export XDG_REPOS_DIR="$HOME/repos"' >> ~/.zshenv
echo '#export XDG_MUSIC_DIR="$HOME/music"' >> ~/.zshenv