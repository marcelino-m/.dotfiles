# -*- mode: sh; -*-

alias et="emacsclient -t"

function ec () {
         emacsclient -cq "$@" &
}

alias v=less
