source ~/.bash_aliases

export EDITOR="emacsclient -t"
export PATH=$PATH:/home/marcelo/.local/bin


#NVM
if [ -d ~/.nvm ]; then
    export NVM_DIR="/home/marcelo/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

#LESS HIGHLIGHT
if [ -f /usr/share/source-highlight/src-hilite-lesspipe.sh ]; then
    export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
    export LESS=' -R '
fi

#PYENV
if [ -d ~/.pyenv ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv init -)"
fi

#RVM
if [ -d ~/.rvm ]; then
    export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi

if [[ -d $HOME/lab/go/ ]]; then
    export GOPATH="$HOME/lab/go"
    export PATH="$PATH:$GOPATH/bin"
fi

#TMUX
source ~/.tmux.complete.bash
source ~/.tmuxinator.complete.bash

#DOCKER ADDONS
source ~/.docker-compose.complete.bash
source ~/.docker-machine.complete.bash
source ~/.docker-machine-wrapper.complete.bash

#CUSTOM_PROMPT PS1
source ~/.prompt

# customize keys
setxkbmap -option caps:none
xmodmap -e "remove Mod4 = Hyper_L" -e "add Mod3 = Hyper_L" -e "keycode 66 = Hyper_L"
