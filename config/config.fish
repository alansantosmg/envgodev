set SPACEFISH_BATTERY_SHOW false
set -x GOPATH ~/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin
# add the go bin path to be able to execute our programs

set -g -x fish_greeting ''
# Aliases for list files and directories
alias lll='ls -alhF --group-directories-first'
alias lla='ls -alhF --group-directories-first'
alias ll='ls -lh --group-directories-first'
alias la='ls -A  --group-directories-first'
alias lc='ls -CF --group-directories-first'
alias l='ls --group-directories-first'
alias lb='l'

# Aliases for default programs
alias editor='vim'
alias EDITOR='vim'


# Aliases for general navigation
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Aliases for home navigation
alias pic='cd ~/Pictures'
alias pictures='cd ~/Pictures'
alias downloads='cd ~/Downloads'
alias down='cd ~/Downloads'
alias documents='cd ~/Documents'
alias doc='cd ~/Documents'
alias music='cd ~/Music'
alias videos='cd ~/Videos'
alias src='cd ~/src'

## util
alias df='df -h'
alias free='free -thw' 
alias c='xclip'
alias v='xclip -o'
