# Dotfiles

## Prerequisite

You will need to have `git` installed on begin setup on a clean system.

Run the following commands prior to setup.

```console
xcode-select install
softwareupdate --all --install
```

## Setup

1. Clone git repository
```console
git clone git@github.com:steeppham/dotfiles.git
```

2. Boostrap the system by installing `homebrew` and common `packages`
```console
./bootstrap.sh
```

3. Setup additional packages

```console
cd [package]
./install.sh
