
# Environment
. ~/dotfiles/scripts/dotinfo.sh

# Begin code
function insert() {
  touch "$2"
  if ! grep -q "$1" "$2"; then
    echo "$1" > "$2"
  fi
}
insert ". ~/dotfiles/zlogin" "$HOME/.zlogin"
insert ". ~/dotfiles/zshenv" "$HOME/.zshenv"
insert ". ~/dotfiles/zshrc" "$HOME/.zshrc"
git clone https://github.com/zensharp/git-tools ~/.local/bin/git-tools
curl https://get.zensharp.net | bash
export PATH="$PATH:$HOME/.local/bin"
export HOMEBREW_NO_INSTALL_CLEANUP="TRUE"
zget brew
case "$PLATFORM" in
    "mac")
        eval "$(/opt/homebrew/bin/brew shellenv)"
        ;;
    *)
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
        ;;
esac
curl -sS https://starship.rs/install.sh | sh
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
brew install bat
brew install eza
brew install fd
brew install git-delta
brew install make
brew install micro
brew install neofetch
brew install sd
brew install sift
~/dotfiles/git/load.sh
~/dotfiles/micro/load.sh
~/dotfiles/sift/load.sh
~/dotfiles/starship/load.sh
