export HISTCONTROL=ignoreboth:erasedups
export EDITOR="emacsclient -t"


if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

#LESS HIGHLIGHT
if [ -f /usr/share/source-highlight/src-hilite-lesspipe.sh ]; then
    export LESSOPEN="| highlight --style=zenburn --out-format=xterm256 %s  2>/dev/null"
    export LESS=' -R '
fi

#GO
if [ -d "$HOME/.src/go" ]; then
    export GO111MODULE=on
    export PATH="$PATH:$HOME/.src/go/bin"
fi

if [[ -d $HOME/lab/go/ ]]; then
    export GOPATH="$HOME/lab/go"
    export PATH="$PATH:$GOPATH/bin"
fi

#FZF
if [ -f ~/.fzf.bash ]; then
    source ~/.fzf.bash
fi

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# NPM
if [ -f ~/.npm.complete.bash ]; then
   source ~/.npm.complete.bash
fi

if [ -d ~/.virtualenvs ]; then
    export WORKON_HOME=~/.virtualenvs
fi

#PYTHON
#VIRTUALENV
export VIRTUAL_ENV_DISABLE_PROMPT=1
if [ -f ~/.local/bin/virtualenvwrapper.sh ]; then
    source ~/.local/bin/virtualenvwrapper.sh
fi

if [[ -d $HOME/.python-user-base/ ]]; then
    export PYTHONUSERBASE="$HOME/.python-user-base/"
    export PATH="$PATH:$PYTHONUSERBASE/bin/"
fi
