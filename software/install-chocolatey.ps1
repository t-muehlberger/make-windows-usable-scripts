# This script installs the chocolatey package manger for windows. The package manager is required 
# by the other installation scripts.

# Elevate this script to run as admin if it does not already
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { 
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit 
}

# Install Chocolatey (if not yet present)
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install chocolateygui -y

# Unofficial Auto-Updater for packages. 
# This component is optional, uncomment the following line to use it.
# choco install chocolatey-autoupdater -y
