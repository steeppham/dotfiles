#!/bin/sh

set -euxo pipefail

# Copy vim config
cp .vimrc ~/.

# Install solarized theme
mkdir -p ~/.vim/pack/themes/opt/solarized8
git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim/pack/themes/opt/solarized8
