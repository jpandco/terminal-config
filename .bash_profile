#!/bin/bash

# .bashrc
if [ -s ~/.terminal_conf/.bashrc ]; then
    source ~/.terminal_conf/.bashrc
fi

# Terminal prompt
if [ -s ~/.terminal_conf/.prompt ]; then
    source ~/.terminal_conf/.prompt
fi

# Git branch completion script
if [ -s ~/.terminal_conf/.git_completion ]; then
    source ~/.terminal_conf/.git_completion
fi

# Load handy docker shortcuts
if [ -s ~/.terminal_conf/.docker_aliases ]; then
    source ~/.terminal_conf/.docker_aliases
fi

# Load handy apache functions and shortcuts
if [ -s ~/.terminal_conf/.apache_aliases ]; then
    source ~/.terminal_conf/.apache_aliases
fi
