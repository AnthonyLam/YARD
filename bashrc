#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias boo='ssh -A anthony.lam@bh.aerserv.com'
alias ll='ls -al'
alias update='yaourt -Syu --aur --noconfirm'
PS1='[\u@\h \W]\$ '
