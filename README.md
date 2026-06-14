# opencode-reload

[![skills.sh](https://skills.sh/b/amworx/opencode-reload)](https://skills.sh/amworx/opencode-reload)

A skill for [opencode](https://opencode.ai) that adds a `/reload` command to restart the app without closing and reopening it.

## What it does

Type `/reload` in the opencode chat and the app instantly restarts, reloading all config, skills, and plugins. No separate terminal needed.

- Supports both **Desktop app** (Electron) and **CLI**
- Starts the new instance first, then kills the old one — zero downtime
- No output, no delay, no extra text

## Install

### Option 1: skills.sh (recommended)

```bash
npx skills add amworx/opencode-reload
```

### Option 2: Install script

```powershell
git clone https://github.com/amworx/opencode-reload.git
cd opencode-reload
powershell -ExecutionPolicy Bypass -File install.ps1
```

### Option 3: Manual

Copy the restart script to your opencode config directory:

```
~/.config/opencode/
└── scripts/
    └── opencode-restart.ps1
```

## Usage

Type `/reload` in the opencode chat. The app restarts instantly.

## How it works

1. Detects the running opencode process (Desktop or CLI)
2. Starts a new instance immediately
3. Kills the old instance

The transition is seamless — no gap where the app is closed.

## License

MIT
