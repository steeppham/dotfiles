#!/bin/sh

set -eo pipefail

# Generate ssh key
ssh-keygen -t ed25519 -C "your_email@example.com" -N ''
mkdir -p ~/.ssh && cp config ~/.ssh/.

# Add key to keychain
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_ed25519
