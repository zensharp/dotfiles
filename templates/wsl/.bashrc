. ~/.dotfiles/shell/env
. ~/.dotfiles/bash/env
. ~/.dotfiles/wsl/env

. ~/.dotfiles/shell/interactive
. ~/.dotfiles/bash/interactive
. ~/.dotfiles/wsl/interactive

eval $(dircolors ~/.dotfiles/.dircolors)

export PATH="$PATH:$HOME/.dotfiles/shell/bin"
export PATH="$PATH:$HOME/.dotfiles/wsl/bin"

. ~/.dotfiles/shell/login
. ~/.dotfiles/bash/login
. ~/.dotfiles/wsl/login
