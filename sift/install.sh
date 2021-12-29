#!/usr/bin/env bash

mkdir -p ~/.local/bin

curl https://sift-tool.org/downloads/sift/sift_latest_linux_amd64.tar.gz | tar -xz
mv sift_*/sift ~/.local/bin/
rm -rf sift_*

~/dotfiles/sift/load.sh
