#!/usr/bin/env bash

profile="$HOME/.bashrc"

cat profile/mkcd >> $profile
cat profile/wslcd >> $profile
cat profile/interop >> $profile
cat profile/homebrew >> $profile
cat profile/autojump >> $profile
