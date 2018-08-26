#! /bin/bash

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install --appdir="/Applications" cakebrew
brew cleanup

# Apps List: 

apps=(

  #basic
  alfred
  firefox
  iterm2
  vlc

  #Tools
  slack
  notion

  #code
  sourcetree
  visual-studio-code
  iterm2
 
  #download
  jdownloader
  transmit
  spotify

)

# Install apps to /Applications
# Default is /Users/$user/Applications

echo "installing some apps for you..."
brew cask install --appdir="/Applications" ${apps[@]}


brew cleanup

# link Alfred
brew cask alfred link

echo "It's done!"