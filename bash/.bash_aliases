
alias et="emacsclient -t"
alias ed="emacs --daemon"

function ec () {
         emacsclient -cq "$@" &
}

function dbschema () {
         docker run -d -it --rm -e DISPLAY=$DISPLAY --net=host  -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/marcelo/lab:/home/dbschema/lab marcelino/dbschema
}
