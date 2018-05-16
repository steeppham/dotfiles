#!/bin/sh

#brew install nvm
#mkdir ~/.nvm
#export NVM_DIR="$HOME/.nvm"
#. "$(brew --prefix nvm)/nvm.sh"

. $(brew --prefix nvm)/nvm.sh
nvm install 8
nvm alias default 8

packages=(
  tldr
  spaceship-prompt
)

# Install global packes
npm install -g "${packages[@]}"