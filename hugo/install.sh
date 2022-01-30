#!/usr/bin/env bash

wget "https://github.com/gohugoio/hugo/releases/download/v0.92.1/hugo_extended_0.92.1_Linux-64bit.deb" \
    -O hugo.deb; \
    sudo dpkg -i hugo.deb; \
    rm hugo.deb
