#!/usr/bin/env bash

cd $(dirname $0)
echo "Initializing WSL..."
./init-wsl.sh

echo "Initializing WSL user..."
./init-user.sh

echo "Initializing bash profile..."
./init-profile.sh
