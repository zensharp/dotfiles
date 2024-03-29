function ToastNotification {
    param
    (
        [string]$Title,
        [string]$Message,
        [ValidateSet('Info', 'Warning', 'Error', 'None')]
        [string]$Type = "None"
    )

    Add-Type -AssemblyName System.Windows.Forms
    $global:balmsg = New-Object System.Windows.Forms.NotifyIcon
    $path = (Get-Process -id $pid).Path
    $balmsg.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
    $balmsg.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::$Type
    $balmsg.BalloonTipText = $Message
    $balmsg.BalloonTipTitle = $Title
    $balmsg.Visible = $true
    $balmsg.ShowBalloonTip(20000)   
}

ToastNotification $args[0] $args[1]
