#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias shutdown='shutdown now'
alias install='sudo pacman -S'
alias update='sudo pacman -Syu'
alias cdwm='nvim .config/dwm/config.h'
alias curxvt='nvim .config/urxvt'
alias nvim='vim'
PS1='[\u@\h \W]\$ '
