# This script changes some of the default settings in windows

# Elevate this script to run as admin if it does not already
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { 
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit 
}

# Show also known file extensions in Windows Explorer
Push-Location
# http://superuser.com/questions/666891/script-to-set-hide-file-extensions
Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced 
Set-ItemProperty . HideFileExt "0"
Pop-Location
Stop-Process -processName: Explorer -force # This will restart the Explorer service to make this work.