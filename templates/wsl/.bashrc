. ~/.dotfiles/shell/env
. ~/.dotfiles/bash/env
. ~/.dotfiles/bash/interactive
. ~/.dotfiles/wsl/env
. ~/.dotfiles/wsl/interactive

eval $(dircolors ~/.dotfiles/.dircolors)

export PATH="$PATH:$HOME/.dotfiles/shell/bin"
export PATH="$PATH:$HOME/.dotfiles/wsl/bin"
