# -*- mode: sh; -*-

alias et="emacsclient -t"

function ec () {
         emacsclient -cq "$@" &
}

alias v=less
alias sclip="xclip -selection c"
alias gclip="xclip -selection c -o"
