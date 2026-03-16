#!/bin/bash -e

pinfo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

pnotice "Verifying the Homebrew installation"
brew doctor

pnotice "Turning off Homebrew analytics"
brew analytics off
