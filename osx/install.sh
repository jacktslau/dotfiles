#!/bin/sh

echo "Setting up OS X..."

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install Binaries
binaries=(
  trash
  wget
  tree
  git
  caskroom/cask/brew-cask
  caskroom/versions
)

brew install ${binaries[@]}

# Cleanup brew installs
brew cleanup

# Set preferences
# source $DOTFILES/osx/preferences.sh