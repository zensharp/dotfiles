. ~/dotfiles/shell/interactive
. ~/dotfiles/zsh/interactive

# Environment
case "$PLATFORM" in
    mac)
        ;;
    linux)
        ;;
    wsl)
        alias wudo="python3 ~/dotfiles/wsl/bin/wsl-sudo.py"
        wsl-cd () { cd "$(wslpath $1)"; }
        # zsh only
        [[ -n "$WT_SESSION" ]] && {
            chpwd() {
                echo -en '\e]9;9;"'
                wslpath -w "$PWD" | tr -d '\n'
                echo -en '"\x07'
            }
        }
        ;;
esac

# Applications
## starship
eval "$(starship init zsh)"
## zoxide
eval "$(zoxide init zsh)"
