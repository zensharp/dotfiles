#!/usr/bin/env bash

for FILE in $(find . -name README.md -not -path ./README.md -not -path "./site/*")
do
	NAME="$(basename "$(dirname "$FILE")")"
	mkdir -p "site/misc"
	cp "$FILE" "site/misc/$NAME.md"
done
