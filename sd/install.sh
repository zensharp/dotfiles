#!/usr/bin/env bash

mkdir -p ~/.local/bin

wget 'https://github.com/chmln/sd/releases/download/v0.7.6/sd-v0.7.6-x86_64-unknown-linux-gnu' \
	-O ~/.local/bin/sd
chmod +x ~/.local/bin/sd
