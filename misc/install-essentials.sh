#!/usr/bin/env bash

sudo apt-get -qq update
sudo apt-get -qq install -y neofetch
sudo npm install --global undollar
sudo npm install --global clipboard-cli
sudo npm install --global live-server

curl -sS https://webinstall.dev/zoxide | bash
