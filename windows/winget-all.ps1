# Make sure 1) winget is installed and 2) you are running Powershell as admin

# OS
winget install "7zip"
winget install "Git"
winget install "Git Credential Manager Core"
winget install "Ubuntu"
winget install "Python"
winget install "Nodejs"
winget install "Link Shell Extension"

# Essentials
winget install "Windows Terminal"
winget install "Mozilla Firefox"
winget install "Malwarebytes"
winget install "1Password"

# Hardware
winget install "Nvidia GeForce Experience"
winget install "iCUE"
winget install "Logitech Options"

# Dev
winget install "Visual Studio Code" --override "/silent /mergetasks='!runcode,addcontextmenufiles,addcontextmenufolders,associatewithfiles,addtopath'"
winget install "Visual Studio Community" --override "--norestart"
winget install "Sourcetree"
winget install "Unity Hub"

# Apps
winget install "iTunes"
winget install "Spotify"
winget install "Slack"
winget install "Discord"
winget install "Steam"

# Extra
#winget install "Audacity"
#winget install "OBS Studio"
#winget install "TeXstudio"
#winget install "Mp3tag"
#winget install "FileConverter"
#winget install "ShellExView"
#winget install "Power Toys"