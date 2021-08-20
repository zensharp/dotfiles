# Variables
export PROFILE=".zshrc"

# Aliases
resource () { . ${1:-~/.zshrc}; }

alias source="resource"