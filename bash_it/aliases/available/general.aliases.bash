cite about-alias
about-alias 'general aliases'

# List directory contents
alias sl=ls
alias ls='ls -G'        # Compact view, show colors
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'
alias q='exit'

alias _="sudo"

if [ $(uname) = "Linux" ]
then
  alias ls="ls --color=auto"
fi

# Custom aliases
alias gitc='git commit -am $1'
alias gitp='git push'
alias update='yaourt -Syu --aur --noconfirm'

# Network aliases
alias myip='curl http://ipecho.net/plain; echo'

# Location aliases
alias uci='cd ~/Dropbox/My\ Documents/School\ Stuff/UCI/'
alias aer='cd ~/Dropbox/My\ Documents/Aerserv'

# Language aliases
alias py3='python3'

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias -- -='cd -'        # Go back
