#!/usr/bin/env bash

export EDITOR='vim'

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

if [[ -n "$TMUX" ]]; then
 export TERM="screen-256color"
else
 export TERM="xterm-256color"
fi

