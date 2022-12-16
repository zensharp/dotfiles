> [!TIP]
> There is a playbook for Windows setup [here](/playbooks/windows-setup).

# Setup
## Host Installation
1. Apps > Optional Features > More Windows features > Enable "Windows Subsystem for Linux".
2. Apps > Optional Features > More Windows features > Enable "Virtual Machine Platform".
3. [Install WSL](https://apps.microsoft.com/store/detail/windows-subsystem-for-linux/9P9TQF7MRM4R).
4. Set default WSL version.

```shell
> wsl --install --distribution Ubuntu
```

5. Install a distribution.
6. Open an Administrator PowerShell. Run `wsl --set-version Ubuntu 1` or `wsl --set-default-version 1`.

## WSL Setup
1. Install [wslu](https://wslutiliti.es/wslu/) manually ([instructions](https://wslutiliti.es/wslu/install.html#ubuntu)).

# Uninstallation

```shell
> wsl --unregister Ubuntu
```

# References
* [xdg-open-wsl](https://github.com/cpbotha/xdg-open-wsl)
* [wsl-sudo](https://github.com/Chronial/wsl-sudo)