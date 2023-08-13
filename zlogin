. ~/dotfiles/shell/login
. ~/dotfiles/zsh/login

# Environment
case "$PLATFORM" in
    mac)
        ;;
    linux)
        ;;
    wsl)
        dir=$(echo $PWD | tr '[:upper:]' '[:lower:]')
        case $dir in
            /mnt/c/windows* )
                cd $HOME
                ;;
        esac
        ;;
esac
