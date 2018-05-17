#!/bin/sh

set -eo pipefail

# Copy vim config
cp .vimrc ~/.

# Install Pathogen
mkdir -p ~/.vim/autoload
wget -P ~/.vim/autoload https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Install solarized theme
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/

