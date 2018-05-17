#!/bin/sh

set -eo pipefail

# Install vscode
brew cask install visual-studio-code

# Copy user settings.json
cp settings.json ~/Library/Application\ Support/Code/User/settings.json
