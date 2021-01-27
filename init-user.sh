#!/usr/bin/env bash

# Apply Windows-friendly WSL settings
echo "Applying WSL settings..."
cp etc/wsl.conf /etc

# Add standard files to new home
echo "Adding standard files to home..."
cp -R /etc/skel/. "$home/"

# Add common aliases
echo
echo "Adding windows aliases..."
echo "alias explorer=explorer.exe" >> "$home"/.bashrc
echo "alias clip=clip.exe" >> "$home"/.bashrc
echo "alias gitk=gitk.exe" >> "$home"/.bashrc
