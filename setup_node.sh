#!/bin/sh

set -eo pipefail

echo "Installing nvm..."

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

#nvm install --lts

brew install yarn
