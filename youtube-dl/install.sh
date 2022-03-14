#!/usr/bin/env bash

sudo apt-get update
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
sudo apt-get install -y ffmpeg

. ~/.dotfiles/youtube-dl/load.sh
