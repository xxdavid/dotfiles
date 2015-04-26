# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="amuse"

# Command auto-correction
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git brew composer lol osx sublime symfony2 web-search heroku colored-man sudo)

# ZSH init script
source $ZSH/oh-my-zsh.sh

# Aliases
alias cdzapisky="cd ~/Dropbox/Apps/zapisky/"
alias spotify="osascript /usr/local/bin/SpotifyControl.scpt"

# Enviroment language
export LC_ALL="en_US.UTF-8"
export LANG=en_US.UTF-8

# $PATH
export PATH="$PATH:~/go/bin"
export PATH="$PATH:~/pebble-dev/PebbleSDK-current/bin"

export GOPATH=$HOME/go

# Node Version Manager
. ~/.nvm/nvm.sh
