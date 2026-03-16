# stunning-potato

Bootstrap script to restore a new Mac

## Flow

1. Install Homebrew
2. Restore local settings
3. Install software
4. Install programming languages
5. Setup OSX settings
6. Reboot

## Usage

```bash
$ curl -L -o potato.zip https://github.com/dvdizon/stunning-potato/archive/main.zip
$ unzip potato.zip
$ pushd stunning-potato-main
$ ./restore.sh
```

## Installed Tools

**Formulae:**
- `cloudflared` — Cloudflare Tunnel client
- `ffmpeg` — Audio/video processing
- `gh` — GitHub CLI
- `git` — Version control
- `nginx` — Web server
- `node@22` — Node.js LTS
- `nvm` — Node version manager
- `ripgrep` — Fast grep alternative
- `starship` — Cross-shell prompt

**Casks:**
- `caffeine` — Keep screen from going to sleep
- `claude-code` — Claude Code CLI
- `codex` — OpenAI Codex CLI
- `ghostty` — GPU-accelerated terminal
- `obsidian` — Knowledge base / note-taking
- `rectangle` — Window management
- `visual-studio-code` — Code editor

## Shell Configuration

This setup uses **Starship** for the shell prompt. After running `restore.sh`, edit `~/.config/starship.toml` to customize the prompt appearance.

For more information: https://starship.rs/
