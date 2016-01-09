echo "Welcome."

cd ~

# Homebrew
echo "Installing Homebrew."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# ZSH
echo "Installing ZSH."
brew install zsh
echo "Installing Oh my ZSH"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Installing some ZSH plugins"

echo "Downloading .zshrc"
curl "https://raw.githubusercontent.com/xxdavid/dotfiles/master/.zshrc" -o ".zshrc"

# VIM
brew install vim
echo "Configuring VIM and installing plugins."
curl "https://raw.githubusercontent.com/xxdavid/dotfiles/master/.vimrc" -o ".vimrc"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
brew install editorconfig
vim +PluginInstall +qall
#cd ~/.vim/bundle/YouCompleteMe
#./install.py --clang-completer

# Configuration
echo "Applying configuration."

## Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
## Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on
## Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
## Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
## Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
## Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
## Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true
## Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true
## Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
## Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNosksForBackup -bool true

# Install homebrew formulas
echo "Installing homebrew formulas"
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

brew install git node python python3 php70 httpie wget

mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/php70/*.plist ~/Library/LaunchAgents

# Installing apps
echo "Installing apps."
brew cask install evernote dropbox seafile-client flux google-chrome iterm2 firefox 1password skype sublime-text spotify spotify-notifications vlc gimp java flash-player
brew tap caskroom/versions
brew cask install airmail-beta

# iTerm2 solarized colorscheme
echo "Importing Solarized colorscheme to iTerm2."
cd /tmp
wget https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
open Solarized\ Dark.itermcolors

echo "Done."
