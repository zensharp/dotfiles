
# Environment
. ~/dotfiles/scripts/dotinfo.sh

# Begin code
echo ". ~/dotfiles/zshlogin" >> "$HOME/.zlogin"
echo ". ~/dotfiles/zshenv" >> "$HOME/.zshenv"
echo ". ~/dotfiles/zshrc" >> "$HOME/.zshrc"
git clone https://github.com/zensharp/git-tools ~/.local/bin/git-tools
curl https://get.zensharp.net | bash
export PATH="$PATH:$HOME/.local/bin"
zget brew
case "$PLATFORM" in
    "linux")
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
        ;;
    *)
        eval "$(/opt/homebrew/bin/brew shellenv)"
        ;;
esac
brew install bat
brew install exa
brew install fd
brew install git-delta
brew install make
brew install micro
brew install neofetch
brew install npm
brew install sd
brew install sift
brew install starship
brew install zoxide
~/dotfiles/git/load.sh
~/dotfiles/micro/load.sh
~/dotfiles/sift/load.sh
~/dotfiles/starship/load.sh
