#!/usr/bin/env pwsh

# Source: https://gist.github.com/101v/4ded69398369f78962681e8ff00a5d1d

Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Enum\HID\*\*\Device` Parameters FlipFlopWheel -EA 0
Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Enum\HID\*\*\Device` Parameters FlipFlopWheel -EA 0 | ForEach-Object { Set-ItemProperty $_.PSPath FlipFlopWheel 1 }
