# Dotfiles
Dotfiles I used in my MacOS.

Contains:
  1. [System defaults](https://github.com/mihaliak/dotfiles/blob/master/macos/defaults.sh) and [Dock icons setup](https://github.com/mihaliak/dotfiles/blob/master/macos/dock.sh) 
  2. [Git config](https://github.com/mihaliak/dotfiles/blob/master/dots/.gitconfig), [Git global ignore](https://github.com/mihaliak/dotfiles/blob/master/dots/.gitignore_global)
  5. Custom [/etc/hosts](https://github.com/mihaliak/dotfiles/blob/master/etc/hosts) file with blocked Ads, Trackers & 🔥 stuff on internet
  7. iTerm2 profile
  8. `ssh-manager` command to manage ssh config hosts and keys, including copy public keys to clipboard, transfer to server and more with autocomplete
  9. Packages / CLI (brew, brew cask, dockutil, htop, iftop, openssl, git, node, python3, wget, yarn)
  10. Applications (google-chrome, slack, spotify, sublime-text, postman, iterm2, spectacle, appcleaner, ...)

## Install

On fresh installation of MacOS:

    sudo softwareupdate -i -a
    xcode-select --install

The Xcode Command Line Tools includes `git` and `make` (not available on stock macOS).
Then, install this repo with `curl` available:

    bash -c "`curl -fsSL https://raw.githubusercontent.com/jtaisa/dotfiles/master/remote-install.sh`"

This will clone (using `git`), or download (using `curl` or `wget`), this repo to `~/.dotfiles`. Alternatively, clone manually into the desired location:

    git clone https://github.com/jtaisa/dotfiles.git ~/.dotfiles

Clone and install dotfiles:
	
    git clone https://github.com/jtaisa/dotfiles.git ~/dotfiles
    cd ~/dotfiles/install
    chmod +wx install.sh
    chmod -R +wx ~/dotfiles/bin
    ./install.sh

## Additional steps

1. In iterm `Preferences > General > Load preferences from a custom folder or URL` and set it to `~/dotfiles/iterm`
2. `sudo reboot`
3. Enjoy

## The `dotfiles` command

    $ dotfiles
    ￫ Usage: dotfiles <command>

    Commands:
       help             This help message
       update           Update packages and pkg managers (OS, brew, npm, yarn, commposer)
       clean            Clean up caches (brew, npm, yarn, composer)
       symlinks         Run symlinks script
       brew             Run brew script
       hosts            Run hosts script
       defaults         Run MacOS defaults script
       dock             Run MacOS dock script

## The `ssh-manager` command

    $ ssh-manager
    ￫ Usage: ssh-manager <command>

    Commands:
       help             This help message
       list             List of all SSH keys and hosts in SSH config
       list-keys        List of all SSH keys
       copy             Copy public SSH key
       new              Generate new SSH key
       host             Add host to SSH config, use --key to generate new key
       remove           Remove host from SSH config
       list-host        List of all hosts in SSH config

## Credits

All credits for the scripts and ideas from [mihaliak dotfiles](https://github.com/mihaliak/dotfiles). Thanks!
