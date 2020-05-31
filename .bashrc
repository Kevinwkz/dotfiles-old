# .bashrc
#!/bin/bash

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias xi='xbps-install'
alias xr='xbps-remove'
alias xq='xbps-query'
alias sxi='sudo xbps-install'
alias sxr='sudo xbps-remove'

if [ "(tty)" = "/dev/tty1" ]; then
	pgrep -x i3 || exec startx
end

#PS1='[\u@\h \W]\$ '
set -x PATH "$PATH:$HOME/.local/bin"
set -x PATH "$PATH:$HOME/.local/bin/app"
