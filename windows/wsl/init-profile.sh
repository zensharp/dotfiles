#!/usr/bin/env bash

profile="$HOME/.bashrc"

cat profile/interop >> $profile
cat profile/hotspots >> $profile
cat profile/homebrew >> $profile
cat profile/mkcd >> $profile
