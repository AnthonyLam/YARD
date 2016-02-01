#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export ANDROID_HOME=/home/anthony/Android/Sdk/

alias ls='ls --color=auto'
alias boo='ssh -A anthony.lam@bh.aerserv.com'
alias ll='ls -al'
alias gitc='git commit -am $1'
alias gitp='git push'
alias update='yaourt -Syu --aur --noconfirm'
alias uci='cd ~/Dropbox/My\ Documents/School\ Stuff/UCI/'
alias myip='curl http://ipecho.net/plain; echo'
PS1='[\u@\h \W]\$ '

export NVM_DIR="/home/anthony/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
