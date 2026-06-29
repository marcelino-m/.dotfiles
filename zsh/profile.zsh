export EDITOR="emacsclient -t"
export TIMEFMT=$'\e[90mcmd\e[0m \e[32m%J\e[0m\n\e[90mreal\e[0m \e[33m%E\e[0m  \e[90muser\e[0m \e[34m%U\e[0m  \e[90msys\e[0m \e[31m%S\e[0m  \e[90mcpu\e[0m \e[33;1m%P\e[0m  \e[90mmem\e[0m \e[36m%M\e[0m\e[90mKB\e[0m'

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
if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
fi

# fzf
if command -v fzf >/dev/null 2>&1; then
    eval "$(fzf --zsh)"
fi

# opencode
if [ -d "$HOME/.opencode/bin" ] ; then
    export PATH="$HOME/.opencode/bin:$PATH"
fi


# # # atuin
# # if command -v atuin >/dev/null 2>&1; then
# #     eval "$(atuin init bash)"
# #     bind '"\e[A": history-search-backward'
# # fi
