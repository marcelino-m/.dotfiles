export HISTCONTROL=ignoreboth:erasedups
export EDITOR="emacsclient -t"
export PATH=$PATH:/home/marcelo/.local/bin:/opt/guile-2.2/bin

#LESS HIGHLIGHT
if [ -f /usr/share/source-highlight/src-hilite-lesspipe.sh ]; then
    export LESSOPEN="| highlight --style=zenburn --out-format=xterm256 %s  2>/dev/null"
    export LESS=' -R '
fi

#GO
if [[ -d $HOME/lab/go/ ]]; then
    export GOPATH="$HOME/lab/go"
    export PATH="$PATH:$GOPATH/bin"
fi

#TIM
export TIMLIB_SRC_ROOT=/home/marcelo/lab/gpsmina/timlib
export LIB_V4D_TO_LINK=/home/marcelo/lab/gpsmina/libv4d/libv4dPaqueteGrafico.a
export LIB_V4D_INCLUDE=/home/marcelo/lab/gpsmina/libv4d/src
