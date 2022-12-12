# Installation
1. Activate the WSL Feature.
2. Install WSL.
3. Install a distrubition.

```shell
> wsl --install --distribution Ubuntu
```

4. Open an Administrator PowerShell.
5. Run `wsl --set-version Ubuntu 1` or `wsl --set-default-version 1`.
6. Install [wslu](https://wslutiliti.es/wslu/) manually ([instructions](https://wslutiliti.es/wslu/install.html#ubuntu)).

# Uninstallation

```shell
> wsl --unregister Ubuntu
```

# Setup
* Create SSH keys within WSL. Copy the keys to the Windows host home directory.
* Clone dotfiles to WSL. Create a symlink in the Windows host home directory.
* Symlink `gitconfig` in the Windows host home directory to `gitconfig` in WSL.

# References
* [xdg-open-wsl](https://github.com/cpbotha/xdg-open-wsl)
* [wsl-sudo](https://github.com/Chronial/wsl-sudo)