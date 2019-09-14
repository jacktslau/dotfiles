#!/bin/sh

echo "Setting up OS X..."
brew update

# Install GNU core utilities (those that come with OS X are outdated)
HOMEBREW_NO_AUTO_UPDATE=1 brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
HOMEBREW_NO_AUTO_UPDATE=1 brew install findutils

# Install Bash 4
HOMEBREW_NO_AUTO_UPDATE=1 brew install bash

# Install Binaries
binaries=(
  trash
  wget
  tree
  git
)

HOMEBREW_NO_AUTO_UPDATE=1 brew install ${binaries[@]}

# Cleanup brew installs
brew cleanup

cask_binaries=(
  google-chrome
  firefox  
  dropbox
  boxcryptor
)

HOMEBREW_NO_AUTO_UPDATE=1 brew cask install ${cask_binaries[@]}

# Set preferences
# source $DOTFILES/osx/preferences.sh