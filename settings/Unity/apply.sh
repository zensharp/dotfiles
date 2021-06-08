#!/usr/bin/env bash

cd $(dirname $0)

unityPrefs="C:\Program Files\Unity\Hub\Editor"
unityPrefs=$(wslpath "$unityPrefs")

echo "Copying Unity settings to $unityPrefs..."
for d in "$unityPrefs"/* ; do
	cp -R "Editor" "$d/"
done