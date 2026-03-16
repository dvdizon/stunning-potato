#!/bin/bash -e

pinfo "Installing Required Packages"
brew bundle --file=- <<EOF
    # Formulae
    brew 'cloudflared'    # Cloudflare Tunnel client
    brew 'ffmpeg'         # Audio/video processing
    brew 'gh'             # GitHub CLI
    brew 'git'            # Version control
    brew 'nginx'          # Web server
    brew 'node@22'        # Node.js LTS
    brew 'nvm'            # Node version manager
    brew 'ripgrep'        # Fast grep alternative
    brew 'starship'       # Cross-shell prompt

    # Casks
    cask 'caffeine'           # Keep screen from going to sleep
    cask 'claude-code'        # Claude Code CLI
    cask 'codex'              # OpenAI Codex CLI
    cask 'ghostty'            # GPU-accelerated terminal
    cask 'obsidian'           # Knowledge base / note-taking
    cask 'rectangle'          # Window management
    cask 'visual-studio-code' # Code editor

EOF

brew cleanup
