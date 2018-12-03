#!/bin/sh

set -euxo pipefail

# Copy vim config
cp .vimrc ~/.

# Install Pathogen
mkdir -p ~/.vim/autoload
wget -P ~/.vim/autoload https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Install solarized theme
mkdir -p ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

