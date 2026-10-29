# -*- mode: sh; -*-

alias et="emacsclient -t"

function ec () {
         emacsclient -cq "$@" &
}

function wsh () {
         wezterm cli spawn --domain-name "SSH:$1"
}

alias v=less
alias sclip="xclip -selection c"
alias gclip="xclip -selection c -o"
