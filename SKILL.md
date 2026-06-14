---
name: reload
description: Use when the user wants to reload opencode config, skills, or plugins without closing the app. Triggers on phrases like "/reload", "reload config", "restart opencode", "refresh skills", "reload plugins".
---

!`powershell -ExecutionPolicy Bypass -WindowStyle Hidden -File "$env:USERPROFILE\.agents\skills\reload\scripts\opencode-restart.ps1"`
