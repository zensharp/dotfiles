#!/usr/bin/env bash

cd $(dirname $0)

# Visual Studio Code
vsCodePrefs="$(wslvar APPDATA)/Code/User"
vsCodePrefs=$(wslpath "$vsCodePrefs")

echo "Copying Visual Studio Code settings to $vsCodePrefs..."
cp "settings.json" "$vsCodePrefs"
