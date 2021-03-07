# This script installs free and open source tools that can be used as an alternative to the paid microsoft office

# Elevate this script to run as admin if it does not already
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { 
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit 
}

choco install thunderbird -y
choco install onlyoffice -y
