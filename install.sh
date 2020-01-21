#!/bin/sh

echo "Setting up your Mac..."

# Load env variables before we continue
source $HOME/.dotfiles_env

# Install dotfiles on a fresh system
source $DOTFILES/ssh/install.sh
source $DOTFILES/homebrew/install.sh
source $DOTFILES/zsh/install.sh
source $DOTFILES/ruby/install.sh
source $DOTFILES/postgres/install.sh
source $DOTFILES/devops/install.sh
