# opencode-reload

[![skills.sh](https://skills.sh/b/amworx/opencode-reload)](https://skills.sh/amworx/opencode-reload)

A skill for [opencode](https://opencode.ai) that adds a `/reload` command to restart the app without closing and reopening it.

## What it does

Type `/reload` in the opencode chat and the app instantly restarts, reloading all config, skills, and plugins. No separate terminal needed.

- Supports both **Desktop app** (Electron) and **CLI**
- Starts the new instance first, then kills the old one — zero downtime
- No output, no delay, no extra text
- Works immediately after install — no setup required

## Install

```bash
npx skills add amworx/opencode-reload
```

That's it. Type `/reload` in opencode to restart.

## How it works

1. Detects the running opencode process (Desktop or CLI)
2. Starts a new instance immediately
3. Kills the old instance

The transition is seamless — no gap where the app is closed.

## License

MIT
