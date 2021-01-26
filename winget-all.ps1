# Make sure 1) winget is installed and 2) you are running Powershell as admin

# OS
winget install "Windows Terminal"
winget install "7zip"
winget install "Malwarebytes"
winget install "Git"
winget install "Python"
winget install "Ubuntu"

# Hardware
winget install "Nvidia GeForce Experience"
winget install "iCUE"
winget install "Logitech Options"

# Dev
winget install "Visual Studio Code" --override "/silent /mergetasks='!runcode,addcontextmenufiles,addcontextmenufolders,associatewithfiles,addtopath'"
winget install "Visual Studio Community" --override "--norestart"
winget install "Sourcetree"

# Apps
winget install "Mozilla Firefox"
winget install "1Password"
winget install "iTunes"
winget install "Spotify"
winget install "Slack"
winget install "Discord"
winget install "Unity Hub"

# Extra
#winget install "OBS Studio"
#winget install "TeXstudio"
