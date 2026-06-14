# install.ps1
# Installs opencode-reload skill to your opencode config
param(
    [string]$ConfigDir = "$env:USERPROFILE\.config\opencode"
)

$ErrorActionPreference = "Stop"
$skillDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Create directories
New-Item -ItemType Directory -Path "$ConfigDir\scripts" -Force | Out-Null

# Copy files
Copy-Item -Path "$skillDir\scripts\opencode-restart.ps1" -Destination "$ConfigDir\scripts\opencode-restart.ps1" -Force

Write-Host "opencode-reload installed successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "Type /reload in opencode to restart the app." -ForegroundColor Cyan
