#!/bin/sh

set -euxo pipefail

# Install zsh
brew install zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install spacehip theme
ZSH_CUSTOM=~/.oh-my-zsh/custom
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install powerline fonts
git clone https://github.com/powerline/fonts.git ~/fonts --depth=1
sh ~/fonts/install.sh
rm -rf ~/fonts

# Copy zshrc
ln -sf $(pwd)/.zshrc ~/.
