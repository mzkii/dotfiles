#!/bin/sh
cask_list=(
    mp3gain-express
    visual-studio-code
    iterm2
    google-chrome
    android-studio
    Slack
    google-drive-file-stream
)
echo "Installing apps using cask..."
for cask in "${cask_list[@]}"; do
    brew cask install --force $cask
done
