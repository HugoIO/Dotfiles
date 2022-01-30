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
alias vim='nvim'
alias sx='startx'
alias volume='pulsemixer'
alias music='mpv Downloads/music/'
alias tinter='ping -c 3 gnu.org'
PS1='[\u@\h \W]\$ '
