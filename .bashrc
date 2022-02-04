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
#Look at this, this is FUN 
alias v='vi'
alias vi='vim'
alias vim='nvim'
#Yeah it was FUN
alias mpocd='simple-mtpfs --device 1 Downloads/cell/'
alias sx='startx'
alias volume='pulsemixer'
alias music='mpv Downloads/music/'
PS1='[\u@\h \W]\$ '
