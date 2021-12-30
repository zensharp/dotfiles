#!/usr/bin/env bash

mkdir -p ~/.local/bin

cd ~/.local/bin
curl https://getmic.ro | bash
cd -

. ~/dotfiles/micro/load.sh
