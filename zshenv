## Define per-machine environment
. ~/.dotrc
## Define shell-agnastic environment
. ~/dotfiles/shell/env
## Define zshell environment
#. ~/dotfiles/zsh/env

# Initialize per-platform
case "$PLATFORM" in
    mac)
        ;;
    linux)
        ;;
    wsl)
        export XDG_REPOS_DIR="$WIN_HOME/repos"
        export XDG_DOWNLOAD_DIR="$WIN_HOME/downloads"
        export PATH="$PATH:$HOME/dotfiles/wsl/bin"
        ;;
    remote || vscode || gitpod)
        ;;
esac
