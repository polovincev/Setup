#!/usr/bin/env bash

#Check if Homebrew is installed
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo 'Please install Homebrew by running the following command: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
else
    brew update
fi

#Upgrade installed formulae
brew upgrade

# Save Homebrew’s installed location
BREW_PREFIX=$(brew --prefix)

#Tools
brew install wget --with-iri
brew install git
brew install zsh
brew install node

#Apps
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask vlc
brew install --cask visual-studio-code
brew install --cask zoom
brew install --cask fork 
brew install --cask docker

# Remove outdated versions from the cellar.
brew cleanup

#npm
npm install -g yarn