#!/bin/sh

echo "Setting up zsh..."

# Install ZSH binaries
brew bundle --file=$DOTFILES/zsh/Brewfile

# Make zsh the default environment
chsh -s $(which zsh)

# Install zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

cd $DOTFILES/config; stow zsh -t ~/; cd $DOTFILES
source $HOME/.zshrc
