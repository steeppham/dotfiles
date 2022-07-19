#!/bin/sh

set -euxo pipefail

brew install --cask iterm2

# Install menlo powerline font
# brew cask install font-menlo-for-powerline

ln -sf $(pwd)/Profiles.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/.
