export BROWSER="explorer.exe"

alias wudo="python3 ~/.dotfiles/bin/wsl-sudo.py"

wslcd ()
{
	cd "$(wslpath $1)"
}

if [[ "${PWD,,}" == "/mnt/c/windows/system32" ]]; then
	cd $HOME
fi
