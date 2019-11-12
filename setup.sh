#!/bin/sh

set -eo pipefail

echo "Setting up..."

# Install xcode command line tools
echo "Installing xcode command line tools..."
xcode-select --install || true

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew.."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew
brew update

# Install brew packages (Brewfile)
echo "Installing brew packages..."
brew bundle
brew doctor
