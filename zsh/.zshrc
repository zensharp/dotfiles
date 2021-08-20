# Variables
export PROFILE=".zshrc"

# Command line prompt
autoload -U colors && colors
PS1="%{$fg[green]%}%n@%m %{$fg[blue]%}%~ %{$reset_color%}%% "
