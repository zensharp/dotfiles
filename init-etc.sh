#!/usr/bin/env bash

usernameUbuntu="developer"
usernameWindows="dev"

echo "s/\/home\/$usernameUbuntu/\/mnt\/c\/Users\/$usernameWindows/g"
sed -i "s/\/home\/$usernameUbuntu/\/mnt\/c\/Users\/$usernameWindows/g" /etc/passwd

cp wsl.conf /etc