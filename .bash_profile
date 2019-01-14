#!/bin/bash

# Homebrew path
export PATH="/usr/local/sbin:$PATH"

# .bashrc
if [ -s ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -s ~/.docker-aliases ]; then
    source ~/.docker-aliases
fi

# Git branch completion script
if [ -s ~/.git_completion ]; then
    source ~/.git_completion
fi

# Git branch info
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

emojis=(🧙 🐶 🐺 🐱 🐭 🐰 🐯 🐨 🐻 🐷 🐮 🐵 🐼 🐧 🐢 🐙 🐳 🐬 👻 👾 🦁 🦊 🦒 🐘 🦕)

emoji='`echo ${emojis[$RANDOM % 22]}`'

# Customize bash prompt to show dir and git status
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $emoji $ "
