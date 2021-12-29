#!/usr/bin/env bash

cd ~
curl https://getmic.ro | bash
sudo mv 'micro' '/usr/local/bin/'

~/dotfiles/micro/load.sh
