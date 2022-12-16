> [!TIP]
> There is a playbook for Windows setup [here](/playbooks/windows-setup).

# Setup
## Shell
1. [Install Tailscale](https://tailscale.com/download/).
1. [Install Firefox](https://www.mozilla.org/en-US/firefox/download/thanks/).
1. Login to Firefox account.
1. Invert scroll direction ([jamie-pate/flipflop-windows-wheel](https://github.com/jamie-pate/flipflop-windows-wheel))
1. Disable disk sleeping (?).
1. Uninstall McAfee.

## Settings
| Path | Name | Value |
| --- | --- | --- |
| [Time & Language > Language & Region > Regional format](ms-settings:regionformatting) | Short date | 2017-04-05 |
| [Time & Language > Language & Region > Regional format](ms-settings:regionformatting) | Short time | 09:40 |
| [Time & Language > Language & Region > Regional format](ms-settings:regionformatting) | Long time | 09:40:07 |
| [Accessibility > Visual Effects]( 	ms-settings:easeofaccess-visualeffects) | Always show scrollbars | On |
| [System > Multitasking](ms-settings:multitasking) > Snap windows | When I snap a window, show what I can snap next to it | false |
| [System > Multitasking](ms-settings:multitasking) > Alt + Tab | Open windows only | false |
| [Bluetooth & devices > Touchpad](ms-settings:devices-touchpad) > Taps | Touchpad sensitivity | Most sensitive |
| [Bluetooth & devices > Touchpad](ms-settings:devices-touchpad) > Taps | Press the lower right corner of the touchpad to right-click | false |
| [Bluetooth & devices > Mouse](ms-settings:easeofaccess-mousepointer) > Related settings | Additional mouse settings |  |
| [System > Display > Related settings > Advanced display](ms-settings:display-advanced) | Choose a refresh rate | <match your monitors refresh rate> |
| Control Panel\Hardware and Sound\Power Options\System Settings | When I press the power button: | Sleep |
| [Personalization > Taskbar](ms-settings:taskbar) > Taskbar items | Search | Off |
| [Personalization > Taskbar](ms-settings:taskbar) > Taskbar items | Widgets| Off |
| [Personalization > Taskbar](ms-settings:taskbar) > Taskbar items | Chat | Off |
| [Personalization > Colors](ms-settings:personalization-colors) | Accent color | Manual (#5679a4) |

# References
* [Windows Settings URLs](https://docs.microsoft.com/en-us/windows/uwp/launch-resume/launch-settings-app)
