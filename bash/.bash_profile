source ~/.bash_aliases

export HISTCONTROL=ignoreboth:erasedups
export EDITOR="emacsclient -t"
export PATH=$PATH:/home/marcelo/.local/bin

# This make available dbus for system units defined by user, me!
systemctl --user import-environment DBUS_SESSION_BUS_ADDRESS


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
fi

#PYTHON VIRTUALENV
if [ -f ~/.local/bin/virtualenvwrapper.sh ]; then
    source ~/.local/bin/virtualenvwrapper.sh
    export VIRTUAL_ENV_DISABLE_PROMPT=1
fi

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#GO
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

#FZF
if [ -f ~/.fzf.bash ]; then
    source ~/.fzf.bash
    export FZF_CTRL_R_OPTS='--no-height'
fi


#NPM
if [ -f ~/.npm.complete.bash ]; then
    source ~/.npm.complete.bash
fi

#TIM
export TIMLIB_SRC_ROOT=/home/marcelo/lab/gpsmina/timlib
export LIB_V4D_TO_LINK=/home/marcelo/lab/gpsmina/libv4d/libv4dPaqueteGrafico.a
export LIB_V4D_INCLUDE=/home/marcelo/lab/gpsmina/libv4d/src

# customize keys
setxkbmap -option caps:none
xmodmap -e "remove Mod4 = Hyper_L" -e "add Mod3 = Hyper_L" -e "keycode 66 = Hyper_L"
