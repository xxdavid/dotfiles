# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="amuse"

# Command auto-correction
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git brew composer osx sublime symfony2 web-search heroku colored-man sudo bgnotify zsh-syntax-highlighting)

# ZSH init script
source $ZSH/oh-my-zsh.sh

# Aliases
alias cdzapisky="cd ~/Seafile/Zapisky/"
alias 🐈=cat

# Enviroment language
export LC_ALL="en_US.UTF-8"
export LANG=en_US.UTF-8

# $PATH
export PATH=$PATH:/usr/local/mysql/bin/
export PATH=$PATH:~/.composer/vendor/bin/

# Node Version Manager
. ~/.nvm/nvm.sh


function lazyclone {
    url=$1;
    reponame=$(echo $url | awk -F/ '{print $NF}' | sed -e 's/.git$//');
    git clone $url $reponame;
    cd $reponame;
}

# Android SDK
export ANDROID_HOME=/usr/local/opt/android-sdk
