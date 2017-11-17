
alias et="emacsclient -t"
alias ed="emacs --daemon"

function ec () {
         emacsclient -cq "$@" &
}

function dbschema () {
         docker run -d -it --rm -e DISPLAY=$DISPLAY --net=host  -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/marcelo/lab:/home/dbschema/lab marcelino/dbschema
}

#GIT
# See: https://brbsix.github.io/2015/11/23/perform-tab-completion-for-aliases-in-bash/

alias g=git
_completion_loader git
complete -o bashdefault -o default -o nospace -F _git g