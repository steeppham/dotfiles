#!/bin/sh

set -eo pipefail

# Install vscode
brew cask install visual-studio-code

# Install extensions
#code --install-extension dbaeumer.vscode-eslint
#code --install-extension monokai.theme-monokai-pro-vscode

# Copy user settings.json
cp settings.json ~/Library/Application\ Support/Code/User/settings.json
