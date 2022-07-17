#!/bin/sh

set -euxo pipefail

# Copy vim config
cp .vimrc ~/.

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install solarized theme
mkdir -p ~/.vim/pack/themes/opt/solarized8
git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim/pack/themes/opt/solarized8
