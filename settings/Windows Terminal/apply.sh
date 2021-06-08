#!/usr/bin/env bash

cd $(dirname $0)

wtPrefs="$(wslvar LOCALAPPDATA)\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
wtPrefs=$(wslpath "$wtPrefs")

echo "Copying Windows Terminal settings to $wtPrefs..."
cp "settings.json" "$wtPrefs"
