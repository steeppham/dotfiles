#!/bin/sh

set -eo pipefail

# Copy vim config
cp .vimrc ~/.

# Install solarized theme
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/

