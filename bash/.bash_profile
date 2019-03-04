export HISTCONTROL=ignoreboth:erasedups
export EDITOR="emacsclient -t"

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#LESS HIGHLIGHT
if [ -f /usr/share/source-highlight/src-hilite-lesspipe.sh ]; then
    export LESSOPEN="| highlight --style=zenburn --out-format=xterm256 %s  2>/dev/null"
    export LESS=' -R '
fi

#GO
if [ -d "$HOME/.src/go" ]; then
    export PATH="$PATH:$HOME/.src/go/bin"
fi

if [[ -d $HOME/lab/go/ ]]; then
    export GOPATH="$HOME/lab/go"
    export PATH="$PATH:$GOPATH/bin"
fi
