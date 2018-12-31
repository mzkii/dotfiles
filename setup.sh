#!/bin/sh

echo ""
echo "**************************************************"
echo "**  Setup powerline fonts...                    **"
echo "**************************************************"
git clone https://github.com/powerline/fonts.git --depth=1 ~/fonts
sh ~/fonts/install.sh
rm -rf ~/fonts


echo ""
echo "**************************************************"
echo "**  Setup oh-my-zsh...                          **"
echo "**************************************************"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig # backup
curl https://raw.githubusercontent.com/mzkii/dotfiles/master/.zshrc > ~/.zshrc # overwrite
chsh -s /bin/zsh # change login shell


echo ""
echo "**************************************************"
echo "**  Setup homebrew...                           **"
echo "**************************************************"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/mzkii/dotfiles/master/homebrew.sh)"


echo ""
echo "**************************************************"
echo "**  Setup cask...                               **"
echo "**************************************************"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/mzkii/dotfiles/master/cask.sh)"


echo ""
echo "**************************************************"
echo "**  Setup mas...                                **"
echo "**************************************************"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/mzkii/dotfiles/master/mas.sh)"


echo ""
echo "**************************************************"
echo "**  DONE!!                                      **"
echo "**  Please make another setting for iterm2.     **"
echo "**                                              **"
echo "**  1. Please set the color of iterm2.          **"
echo "**     Preferences --> Profiles -->             **"
echo "**     Colors      --> Color Presets... -->     **"
echo "**     import...   --> Select 'brogrammer'      **"
echo "**                                              **"
echo "**  2. Please set the font of iterm2.           **"
echo "**     Preferences --> Profiles -->             **"
echo "**     Text        --> Change Font -->          **"
echo "**     14pt Meslo LG S Regular for Powerline    **"
echo "**************************************************"
