#!/bin/sh

# xcode
xcode-select --install

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew upgrade --all

#  brew apps
app_list=(
    cask
    mas
)
echo "Installing brew apps using homebrew..."
for app in "${app_list[@]}"; do
    brew install $app || brew upgrade $app
done
