#!/bin/sh

set -eo pipefail

echo "Bootstrapping..."

# Install xcode command line tools
echo "Installing xcode command line tools..."
xcode-select --install || true

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Update Homebrew
brew update

# Install brew packages (Brewfile)
echo "Installing brew packages..."
brew bundle
brew doctor

echo "Boostrap done!"
