
dotfilesDir=~/.dotfiles

export PATH="$dotfilesDir/bin:$PATH"

alias ls="ls --color=auto --group-directories-first"
alias tree="tree --dirsfirst"
alias wudo="python3 $dotfilesDir/bin/wsl-sudo.py"

alias tree1="tree -L 1"
alias tree2="tree -L 2"
alias tree3="tree -L 3"
alias tree4="tree -L 4"

wslcd ()
{
	cd "$(wslpath $1)"
}

resource ()
{
	. ${1:-~/.bashrc}
}

alias source="resource"
