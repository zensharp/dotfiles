#!/usr/bin/env bash

mkdir -p ~/.local/share/fonts
curl -L -o cascadia.zip "https://github.com/microsoft/cascadia-code/releases/download/v2110.31/CascadiaCode-2110.31.zip"
unzip cascadia.zip -d cascadia
mv cascadia/ttf/*.ttf ~/.local/share/fonts
fc-cache -f -v
