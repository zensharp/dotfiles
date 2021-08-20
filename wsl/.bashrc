export PATH="$PATH:$HOME/.dotfiles/wsl/bin"
export BROWSER="explorer.exe"

alias wudo="python3 ~/.dotfiles/wsl/bin/wsl-sudo.py"

open ()
{
	if command -v xdg-open &> /dev/null
	then
		xdg-open "${1:-$PWD}"
	else
		explorer.exe "${1:-$PWD}"
	fi
}

wslcd () { cd "$(wslpath $1)"; }

if [[ "${PWD,,}" == "/mnt/c/windows/system32" ]]; then
	cd $HOME
fi
