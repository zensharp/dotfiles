#!/usr/bin/env bash

curl https://sift-tool.org/downloads/sift/sift_latest_linux_amd64.tar.gz | tar -xz
cp sift_*/sift ~/.local/bin/sift
