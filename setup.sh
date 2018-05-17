#!/bin/sh

echo "Setting up..."

# Install xcode command line tools
xcode-select --install

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew
brew update

# Install brew packages (Brewfile)
brew bundle
brew doctor
