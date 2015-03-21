#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '
PS1='_SUDO '

# Aliases
alias ls='ls --color=auto -la'
alias pimpstall="sudo pacman -S"
alias pimpgrade="sudo pacman -Syu"
