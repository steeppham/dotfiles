#!/bin/sh

set -eo pipefail

# Install zsh
brew install zsh zsh-completions

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed "s/env zsh//g")"

# Copy zshrc
cp .zshrc ~/.
