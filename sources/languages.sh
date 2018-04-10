#!/bin/bash -e

pinfo "Installing Node.js"
brew install nvm
nvm install 6
nvm alias default 6

pinfo "Installing Java"
brew cask install java

pinfo "Installing Go"
brew install go

pnotice "Installing Global Packages"
npm install -g jenkins-mocha mocha
gem install bundler
