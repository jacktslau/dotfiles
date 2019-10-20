#!/bin/sh

echo "Setting up node.js..."

# Install node.js binaries
brew bundle --file=$DOTFILES/nodejs/Brewfile

nvm install --lts
nvm use --lts
