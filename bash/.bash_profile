export EDITOR="emacsclient -t"

if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi


#GO
if [ -d "$HOME/.src/go" ]; then
    export GO111MODULE=on
    export PATH="$PATH:$HOME/.src/go/bin"
fi

export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"
if [ ! -d $GOPATH ]; then
    mkdir -p "$GOPATH/bin"
fi

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# NPM
if [ -f ~/.npm.complete.bash ]; then
   source ~/.npm.complete.bash
fi


#PYTHON

export PIPENV_VENV_IN_PROJECT=1 # use venv in project dir
export VIRTUAL_ENV_DISABLE_PROMPT=1

export PYTHONUSERBASE="$HOME/.python-user-base/"
export PATH="$PATH:$PYTHONUSERBASE/bin/"

if [ ! -d $PYTHONUSERBASE ]; then
    mkdir -p $PYTHONUSERBASE
fi

export NVM_DIR="$HOME/.nvm"
if [ ! -d $NVM_DIR ]; then
    mkdir -p $NVM_DIR
fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/marcelo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Rust
if [ -d "$HOME/.cargo" ]; then
  . "$HOME/.cargo/env"
fi

#zoxide
eval "$(zoxide init bash)"
