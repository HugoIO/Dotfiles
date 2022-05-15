#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PATH="$HOME/.local/bin:$PATH"
alias ls='lsd'
alias sx='startx'
alias shut='sudo shutdown now'
alias connect-android="simple-mtpfs --device 1 usb/"
alias c='clear'
alias ss='surf https://startpage.com'
alias aur='pikaur'
PS1='\u \W> '
. "$HOME/.cargo/env"
