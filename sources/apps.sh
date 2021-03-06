#!/bin/bash -e

pinfo "Installing Required Packages"
brew bundle --file=- <<EOF
    tap "homebrew/bundle"
    tap "homebrew/core"
    tap "caskroom/versions" # Alternate versions of software
    tap "caskroom/fonts"    # Powerline fonts

    # Backup
    cask 'arq'            # Backup program
    cask 'dropbox'        # Local configuration storage
    brew 'mackup'         # App configuration service

    # Shell Stuff
    brew 'lastpass-cli'   # Accessing secrets
    brew 'zsh'            # Not bash
    brew 'fish'           # fish
    brew 'zsh-syntax-highlighting'
    brew 'coreutils'      # All those cool GNU things
    brew 'gpg'            # Encryption and Signing
    brew 'git'            # Collaborating
    brew 'tree'           #
    brew 'rename'         #
    brew 'watch'          #
    brew 'curl'           #
    brew 'wget'           #
    brew 'tldr'           # Quick lookup of stuff
    brew 'plantuml'       #

    # Communication
    cask 'slack'          # To chat with most people
    cask 'whatsapp'       # To see everyone's group chats
    cask 'telegram'       # To automate all the things
    cask 'discord'        # To chat while gaming

    # Editors
    cask 'atom'           # Coding and stuff
    cask 'visual-studio-code' # Visual Studio Code
    cask 'sublime-text'   # Editing big files
    cask 'xmind'          # Mindmapping
    cask 'macdown'        # Markdown editor
    brew 'vim'            # When you really need it

    # Development
    cask 'docker'         # Doing things in containers
    brew 'docker-compose' # Doing things in many containers
    cask 'hab'            # Doing really cool things in containers
    cask 'virtualbox'     # Doing things in VMs
    cask 'vagrant'        # Doing things in VMs via the command-line
    cask 'chefdk'         # Doing things with Chef
    brew 'hub'            # Collaborating with a fancy UI
    brew 'kubernetes-cli' # Controlling deployed services
    brew 'awscli'         # Working with Amazon
    cask 'insomnia'       # RESTful calls
    brew 'pandoc'         # Converting formats
    brew 'jsonnet'        # Making JSON easier
    brew 'ksonnet/tap/ks' # Write and Deploy Kubernetes configs
    brew 'kubectx'        # allows you to switch context
    brew 'skaffold'       # facilitates continuous development for k8s
    brew 'terraform'      # AWS terraform cli

    # Productivity
    cask 'iterm2'         # Doing things on a terminal
    cask 'alfred'         # Shortcuts to awesome
    cask 'vlc'            # Watching movies
    #cask 'google-chrome'  # Browsing the web
    cask 'keybase'        # Sharing secrets
    brew 'screen'         # Just in case
    cask 'unison'         # Sharing files
    cask 'jdownloader'    # To make downloading easier
    cask 'the-unarchiver' # To decompress things
    cask 'appcleaner'     # Help removing stuff
    cask 'spotify'        # Spotify music
    # cask 'copay'        # Paying people

    # Security
    cask 'little-snitch'  # Control network input/output

    # Taskbar stuff
    cask 'bitbar'         # Display pretty things in my taskbar
    cask 'nosleep'        # Keep machine from turning off
    cask 'caffeine'       # Keep screen from going to sleep
    cask 'spectacle'      # Move windows around
    cask 'flux'           # Sleep better

    # Toolbox
    cask 'cscreen'        # To set the right refresh rate

    # Gaming
    cask 'steam'          # So I can play games
    brew 'nethack'        # For when you're feeling nostalgic

    # Fonts
    cask 'font-droid-sans-mono-for-powerline'
    cask 'font-consolas-for-powerline'
    cask 'font-menlo-for-powerline'
    cask 'font-meslo-for-powerline'
    cask 'font-source-code-pro-for-powerline'

EOF

brew cleanup
brew cask cleanup
brew prune
