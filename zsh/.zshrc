#!/usr/bin/env zsh

zstyle ':completion:*:processes' command 'ps -ax'
zstyle ':completion:*:processes-names' command 'ps -aeo comm='
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:killall:*:processes-names' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:*:killall:*' menu yes select

# Correction des commandes
setopt correctall

# Un petit prompt sympa
autoload -U promptinit
promptinit
prompt adam2

source /etc/zsh/antigen.zsh
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle git

#antigen-use oh-my-zsh
#antigen-bundle arialdomartini/oh-my-git
#antigen theme arialdomartini/oh-my-git-themes oppa-lana-style


$(thefuck --alias)
alias tw="cd /home/bastien/Documents/testWifi/wifi-testing-script"
