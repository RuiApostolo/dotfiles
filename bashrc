#!/bin/bash
# ~/.bashrc: executed by bash(1) for non-login shells.
#c /usr/share/doc/bash/examples/startup-files (in the package bash-doc) for eg

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Functions
source ~/.dotfiles/shell/functions

# Allow local customizations in the ~/.dotfiles-local/shell/before file
if [ -f ~/.dotfiles-local/shell/before ]; then
    source ~/.dotfiles-local/shell/before
fi

# Allow local customizations in the ~/.dotfiles-local/bash/bashrc_before file
if [ -f ~/.dotfiles-local/bash/bashrc_before ]; then
    source ~/.dotfiles-local/bash/bashrc_before
fi

# Settings
source ~/.dotfiles/bash/settings

# Aliases
source ~/.dotfiles/shell/alias

# Exports
source ~/.dotfiles/shell/exports

# Prompt
source ~/.dotfiles/bash/prompt

# Allow local customizations in the ~/.dotfiles-local/shell/after file
if [ -f ~/.dotfiles-local/shell/after ]; then
    source ~/.dotfiles-local/shell/after
fi

# Allow local customizations in the ~/.dotfiles-local/bash/after file
if [ -f ~/.dotfiles-local/bash/after ]; then
    source ~/.dotfiles-local/bash/after
fi



. "$HOME/.cargo/env"
