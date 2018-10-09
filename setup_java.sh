#!/bin/sh

set -eo pipefail

# Install jenv
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc

# Install java8
brew cask install java8

# jenv add $(/usr/libexec/java_home)
# jenv global oracle64-1.8.0.181
jenv enable-plugin export
