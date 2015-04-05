#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# echo "Microsoft Windows [Version 6.3.9600]"
# echo "(c) 2013 Microsoft Corporation. All rights reserved."
# echo

# PS1='[\u@\h \W]\$ '
PS1='_'
# PS1="C:\$(pwd | sed 's:/:\\\\\\\:g')> "


# Aliases
alias ls='ls --color=auto -la'
alias pimpstall="sudo pacman -S"
alias pimpgrade="sudo pacman -Syu"
alias vncviewer="vncviewer -truecolour -quality 9 -compresslevel 9 -fullscreen"
