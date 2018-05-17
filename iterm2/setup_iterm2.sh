#!/bin/sh

set -eo pipefail

# Install iterm2
brew cask install iterm2

# Install powerline fonts
git clone https://github.com/powerline/fonts.git ~/fonts
sh ~/fonts/install.sh
rm -rf ~/fonts
