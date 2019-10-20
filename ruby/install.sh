#!/bin/sh

echo "Setting up ruby..."

# Install ruby binaries
brew bundle --file=$DOTFILES/ruby/Brewfile

rbenv install 2.6.5
rbenv --global 2.6.5

source $DOTFILES/config/ruby/.rubyrc
cd $DOTFILES/config; stow ruby -t ~/; cd $DOTFILES

# Install Bundler
gem install bundler
gem update --system

rbenv rehash
