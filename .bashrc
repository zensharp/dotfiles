
dotfilesDir=~/.dotfiles

export PATH="$dotfilesDir/bin:$PATH"
alias ls="ls --color=auto --group-directories-first"
alias tree="tree --dirsfirst"

wslcd ()
{
	cd "$(wslpath $1)"
}
