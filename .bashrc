
dotfilesDir=~/.dotfiles

export PATH="$dotfilesDir/bin:$PATH"

alias ls="ls --color=auto --group-directories-first"
alias tree="tree --dirsfirst"

alias tree1="tree -L 1"
alias tree2="tree -L 2"

wslcd ()
{
	cd "$(wslpath $1)"
}
