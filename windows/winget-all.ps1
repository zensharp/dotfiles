# Make sure 1) winget is installed and 2) you are running Powershell as admin

# OS
winget install "7zip"
winget install "Git"
winget install "Git Credential Manager Core"
winget install "Python"
winget install "Nodejs"
winget install "Link Shell Extension"

# Essentials
winget install "Windows Terminal"

# Hardware
winget install "Nvidia GeForce Experience"

# Dev
winget install -e --id Microsoft.VisualStudioCode
winget install "Visual Studio Community" --override "--norestart"
winget install "Sourcetree"
winget install "Unity Hub"

# Apps
winget install "iTunes"
winget install "Spotify"
winget install "Slack"
winget install "Discord"
winget install "Steam"