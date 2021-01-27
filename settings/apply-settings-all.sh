#!/usr/bin/env bash

# Unity
unityPrefs="C:\Program Files\Unity\Hub\Editor"
unityPrefs=$(wslpath "$unityPrefs")

echo "Copying Unity settings to $unityPrefs..."
for d in "$unityPrefs"/* ; do
	cp -R "Unity/." "$d/"
done

# Visual Studio Code
vsCodePrefs="$(wslvar APPDATA)/Code/User"
vsCodePrefs=$(wslpath "$vsCodePrefs")

echo "Copying Visual Studio Code settings to $vsCodePrefs..."
cp "Visual Studio Code/settings.json" "$vsCodePrefs"

# Windows Terminal
wtPrefs="$(wslvar LOCALAPPDATA)\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"
wtPrefs=$(wslpath "$wtPrefs")

echo "Copying Windows Terminal settings to $wtPrefs..."
cp "Windows Terminal/settings.json" "$wtPrefs"
