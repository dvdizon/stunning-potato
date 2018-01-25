#!/bin/bash -e

pinfo "Installing Node.js"
brew install nvm

nvm install 6
nvm alias default 6

pnotice "Installing Global Packages"
npm install -g jenkins-mocha mocha
gem install bundler
