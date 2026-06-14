---
name: opencode-reload
description: Use when the user wants to reload opencode config, skills, or plugins without closing the app. Triggers on phrases like "/reload", "reload config", "restart opencode", "refresh skills", "reload plugins".
---

# opencode-reload

Restart opencode to reload config, skills, and plugins without manually closing and reopening the app.

## How it works

When the user types `/reload`, the agent runs a PowerShell script that:

1. Detects whether the Desktop app (Electron) or CLI is running
2. Starts a new opencode instance immediately
3. Kills the old instance

The transition is seamless — no gap where the app is closed.

## Setup

Run the install script from this skill's directory:

```powershell
powershell -ExecutionPolicy Bypass -File "<skill-dir>/install.ps1"
```

This copies the restart script and command to the correct locations:

- `~/.config/opencode/scripts/opencode-restart.ps1`
- `~/.config/opencode/command/reload.md`

## Usage

Type `/reload` in the opencode chat. The app restarts instantly with zero output or delay.

## Manual installation

Copy these files to your opencode config directory:

1. Copy `scripts/opencode-restart.ps1` to `~/.config/opencode/scripts/opencode-restart.ps1`
2. Copy `command/reload.md` to `~/.config/opencode/command/reload.md`

## Troubleshooting

If `/reload` doesn't work, run the script directly from a terminal:

```powershell
powershell -ExecutionPolicy Bypass -File "$env:USERPROFILE\.config\opencode\scripts\opencode-restart.ps1"
```
