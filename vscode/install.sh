#!/bin/sh

set -euxo pipefail

# Install extensions
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension eamodio.gitlens 
code --install-extension aaron-bond.better-comments 
code --install-extension monokai.theme-monokai-pro-vscode

# Copy user settings.json
mkdir -p ~/Library/Application\ Support/Code/User
ln -sf $(pwd)/settings.json ~/Library/Application\ Support/Code/User/.
