. ~/.dotfiles/wsl/wsl.rc
. ~/.dotfiles/bash/bash.rc
. ~/.dotfiles/bash/.bash_prompt
. ~/.dotfiles/.rc

eval $(dircolors ~/.dotfiles/.dircolors)

export PATH="$PATH:$HOME/.dotfiles/bash/bin"
export PATH="$PATH:$HOME/.dotfiles/wsl/bin"
