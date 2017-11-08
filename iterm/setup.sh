#! /usr/bin/fish

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$(realpath .)"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Install fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts