# This script installs Microsoft Office Tools. Office Tools helps with deploying a selected version of Microsoft Office.
# Microsoft Office requires a paid license in order to be used.

# Elevate this script to run as admin if it does not already
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { 
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit 
}

choco install office-tool -y
