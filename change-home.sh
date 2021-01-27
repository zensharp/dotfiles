#!/usr/bin/env bash

if [ $# -ge 2 ]
then
    usernameLinux=$1
    usernameHost=$2
else
    read -p "Linux username: " usernameLinux
    read -p "Host username: " usernameHost
fi

echo

# Change home to Windows user directory
homeLinux="/home/$usernameLinux"
home="/mnt/c/Users/$usernameHost"
echo "Changing path from \"$homeLinux\" to \"$home\"..."
regex="s/\/home\/$usernameLinux/\/mnt\/c\/Users\/$usernameHost/g"
sed -i "$regex" /etc/passwd
