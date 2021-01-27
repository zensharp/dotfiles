#!/usr/bin/env bash

if [ $(whoami) = "root" ]
then
	echo "Run this as the user you want to configure." >&2 
	echo "Example: sudo -u johndoe"
	exit 1
fi

# Apply Windows-friendly WSL settings
echo "Applying WSL settings..."
cp etc/wsl.conf /etc

# Add standard files to new home
echo "Adding standard files to home..."
cp -R /etc/skel/. "$HOME/"

# Add common aliases
echo
echo "# Windows Exe Shorthands"
echo "Adding windows aliases..."
echo "alias explorer=explorer.exe" >> "$HOME"/.bashrc
echo "alias open=explorer" >> "$HOME"/.bashrc
echo "alias clip=clip.exe" >> "$HOME"/.bashrc
echo "alias gitk=gitk.exe" >> "$HOME"/.bashrc
