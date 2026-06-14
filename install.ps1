# install.ps1
# Installs opencode-reload skill to your opencode config
param(
    [string]$ConfigDir = "$env:USERPROFILE\.config\opencode"
)

$ErrorActionPreference = "Stop"
$skillDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Create directories
New-Item -ItemType Directory -Path "$ConfigDir\scripts" -Force | Out-Null
New-Item -ItemType Directory -Path "$ConfigDir\command" -Force | Out-Null

# Copy files
Copy-Item -Path "$skillDir\scripts\opencode-restart.ps1" -Destination "$ConfigDir\scripts\opencode-restart.ps1" -Force
Copy-Item -Path "$skillDir\command\reload.md" -Destination "$ConfigDir\command\reload.md" -Force

Write-Host "opencode-reload installed successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "Type /reload in opencode to restart the app." -ForegroundColor Cyan
