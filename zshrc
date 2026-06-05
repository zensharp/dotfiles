## Define shell-agnostic environment
. ~/dotfiles/shell/interactive
## Define zshell environment
. ~/dotfiles/zsh/interactive

# Environment
case "$PLATFORM" in
    mac)
        export OPEN='/usr/bin/open'
        export BROWSER=$OPEN
        export CLIPBOARD='pbcopy'
        alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
        ;;
    linux)
        export OPEN=xdg-open
        export BROWSER=$OPEN
        export CLIPBOARD='clipboard'
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
        ;;
    wsl)
        export WIN_HOME="/mnt/c/Users/$USER"
        export OPEN='xdg-open'
        export BROWSER='wsl-browse.sh'
        export CLIPBOARD='clip.exe'
        export VISUAL=$OPEN
        export DOCKER_HOST=tcp://localhost:2375
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
        . $HOME/dotfiles/wsl/interactive
        ;;
    remote || vscode || gitpod)
        export OPEN='code'
        alias micro='code'
        ;;
esac

# Dotfiles
for file in ~/dotfiles/shell/functions/**/*
do
	. $file
done

# Applications
## Git
unset GIT_AUTHOR_NAME
unset GIT_AUTHOR_EMAIL
unset GIT_COMMITER_EMAIL

## starship
eval "$(starship init zsh)"
## zoxide
eval "$(zoxide init zsh)"

## exa
EXA_COLORS="reset:$LS_COLORS"
### Permissions
EXA_COLORS="${EXA_COLORS}:ur=31;;1:uw=31;;1:ux=31;;1:ue=31;;1:gr=32;;1:gw=32;;1:gx=32;;1:tr=34;;1:tw=34;;1:tx=34;;1:su=38;;1:sf=38;;1:xa=38;;1"
### File Sizes
EXA_COLORS="${EXA_COLORS}:sn=38;;1:sb=38;;1:df=38;;1:ds=38;;1"
### Owners and Groups
EXA_COLORS="${EXA_COLORS}:uu=38;;1:un=30;;1:gu=38;;1:gn=30;;1"
### Hard Links
EXA_COLORS="${EXA_COLORS}:lc=38;;1:lm=38;;1"
### Git
EXA_COLORS="${EXA_COLORS}:ga=30;;1:gm=33;;1:gd=31;;1:gv=33;;1:gt=33;;1"
### Details and Metadata
EXA_COLORS="${EXA_COLORS}:xx=38;;1:da=38;;1:in=38;;1:bl=38;;1:hd=38;;1;4:lp=38;;1:cc=38;;1"
### Overlays
EXA_COLORS="${EXA_COLORS}:bO=31;;1"
### Hidden files
EXA_COLORS="${EXA_COLORS}:.*=30;;1"
export EXA_COLORS
### Override commands
export LS=eza
alias tree='eza --tree --group-directories-first --ignore-glob .git'
## zoxide
export _ZO_ECHO=1
export _ZO_RESOLVE_SYMLINKS=1
## dotnet
export DOTNET_ROOT="$HOME/.dotnet"
export PATH="$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools"
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

## Visual Studio Code
case "$TERM_PROGRAM" in
	vscode)
		export OPEN="code"
		;;
esac
