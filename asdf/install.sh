!#/bin/sh

set -eof pipefail

brew install asdf

# Install prerequisites and nodejs
brew install gpg gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

# Install node lts and make global default
asdf install nodejs lts
asdf global nodejs lts
