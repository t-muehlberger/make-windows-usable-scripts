# This script installs a basic selection of programs that should be present on any Windows 10 PC.

# This uses the chocolatey package manager, make sure it is present.

# Elevate this script to run as admin if it does not already
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { 
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit 
}

# Web browsers
choco install firefox -y
choco install googlechrome -y

# PDF Viewer
choco install adobereader -y

# Document Scanner
choco install naps2 -y                  

# Remote Help
choco install teamviewer -y
choco install anydesk -y

# Backup 
choco install duplicati -y

# Usable Text Editor
choco install vscode -y
choco install notepadplusplus -y

# Util 
choco install 7zip -y
choco install vlc -y
choco install keepass -y
choco install git -y
choco install putty -y

# Diagnostic Tools 
choco install autoruns -y
choco install procexp -y
choco install gsmartcontrol -y
