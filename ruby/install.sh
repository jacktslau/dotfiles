#!/bin/sh

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Seting up Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install ruby binaries
brew bundle --file=$DOTFILES/ruby/Brewfile

# Install Bundler
gem install bundler
gem update --system
