# Code

```shell
mkdir -p ~/.local/bin

# Essentials
sudo apt install -y tree
sudo apt install -y neofetch
sudo apt install -y zsh
sudo apt install -y autojump

# Starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# FD
sudo apt install -y fd-find
ln -s $(which fdfind) ~/.local/bin/fd

# Micro
curl https://getmic.ro | bash && sudo mv micro /usr/bin
cp ~/dotfiles/micro/settings.json ~/.config/micro

# Sift
curl https://sift-tool.org/downloads/sift/sift_latest_linux_amd64.tar.gz | tar -xz
cp sift_*/sift ~/.local/bin/sift

# Git
cp ~/dotfiles/templates/.gitconfig ~

# Delta
sudo apt install -y delta

# Bat
sudo apt install -y bat
ln -s $(which batcat) ~/.local/bin/bat
```