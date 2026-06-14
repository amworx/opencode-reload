---
name: reload
description: Use when the user wants to reload opencode config, skills, or plugins without closing the app. Triggers on phrases like "/reload", "reload config", "restart opencode", "refresh skills", "reload plugins".
---

# reload

Restart opencode to reload config, skills, and plugins without manually closing and reopening the app.

## First-time setup

When this skill is loaded for the first time, run this command to install the restart script:

```powershell
Copy-Item -Path "<skill-dir>/scripts/opencode-restart.ps1" -Destination "$env:USERPROFILE\.config\opencode\scripts\opencode-restart.ps1" -Force -ErrorAction SilentlyContinue
```

Replace `<skill-dir>` with the actual path to this skill's directory (where SKILL.md is located).

## How it works

When the user types `/reload`, the agent runs a PowerShell script that:

1. Detects whether the Desktop app (Electron) or CLI is running
2. Starts a new opencode instance immediately
3. Kills the old instance

The transition is seamless — no gap where the app is closed.

## Usage

Type `/reload` in the opencode chat. The app restarts instantly with zero output or delay.

## Troubleshooting

If `/reload` doesn't work, run the script directly from a terminal:

```powershell
powershell -ExecutionPolicy Bypass -File "$env:USERPROFILE\.config\opencode\scripts\opencode-restart.ps1"
```
