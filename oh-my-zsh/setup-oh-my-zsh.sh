#!/bin/sh

set -eo pipefail

# Install zsh
brew install zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed "s/env zsh//g")"

# Install spacehip theme
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Copy zshrc
cp .zshrc ~/.
