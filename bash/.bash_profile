# customize keys
setxkbmap -option caps:none
xmodmap -e "keycode 66 = Return"

export EDITOR="emacsclient -t"

export PATH=$PATH:/home/marcelo/.local/bin

#NVM
export NVM_DIR="/home/marcelo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#LESS
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

export GTAGSCONF=/home/marcelo/.local/share/gtags/gtags.conf
export GTAGSLABEL=pygments

export PATH="/home/marcelo/.cask/bin:$PATH"

#ANDROID
ANDROIDE_HOME="/home/marcelo/.android/android-sdk-linux/"
export PATH="$ANDROIDE_HOME/tools:$PATH"
export PATH="$ANDROIDE_HOME/platform-tools:$PATH"

#PYENV
export PATH="$PATH:/home/marcelo/.pyenv/bin"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#RVM
export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#TMUXINATOR
source ~/.tmuxinator-complete.bash
