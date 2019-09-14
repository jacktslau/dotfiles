#!/bin/sh

echo "Setting up zsh..."

# Install zsh
brew install zsh zsh-completions

# Make zsh the default environment
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
