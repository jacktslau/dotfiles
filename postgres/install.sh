#!/bin/sh

echo "Setting up postgres..."

# Install Postgres binaries
brew bundle --file=$DOTFILES/postgres/Brewfile
