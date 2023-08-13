#!/usr/bin/env bash

. ~/dotfiles/zsh/install.sh
. ~/dotfiles/zsh/load.sh

sudo chsh --shell $(which zsh) $(whoami)
