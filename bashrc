# ~/.bashrc: executed by bash(1) for non-login shells.
#c /usr/share/doc/bash/examples/startup-files (in the package bash-doc) for eg

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Functions
source ~/.shell/functions

# Allow local customizations in the ~/.dotfiles-local/shell/before file
if [ -f ~/.dotfiles-local/shell/before ]; then
    source ~/.dotfiles-local/shell/before
fi

# Allow local customizations in the ~/.dotfiles-local/bash/bashrc_before file
if [ -f ~/.dotfiles-local/bash/bashrc_before ]; then
    source ~/.dotfiles-local/bash/bashrc_before
fi

# Aliases
source ~/.dotfiles/shell/alias

# Exports
source ~/.dotfiles/shell/exports


# Allow local customizations in the ~/.dotfiles-local/shell/after file
if [ -f ~/.dotfiles-local/shell/after ]; then
    source ~/.dotfiles-local/shell/after
fi

# Allow local customizations in the ~/.dotfiles-local/bash/after file
if [ -f ~/.dotfiles-local/bash/after ]; then
    source ~/.dotfiles-local/bash/after
fi





# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi



if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

