#!/usr/bin/env bash

wget --output-document delta.deb 'https://github.com/dandavison/delta/releases/download/0.8.3/git-delta_0.8.3_amd64.deb'
sudo dpkg --install delta.deb
rm delta.deb
