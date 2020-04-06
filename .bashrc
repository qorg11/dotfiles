# .bashrc

# ENVS
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export TERM=screen-256color
export INPUTRC="$XDG_CONFIG_HOME"/inputrc

# Prompt

PS1="\[\033[38;5;10m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;12m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[38;5;1m\]λ\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# End prompt

bind 'set completion-ignore-case on'

# Aliases
alias ..="cd .."
alias l="ls -lah"
alias ls='ls --color=auto'
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"
alias cp="cp -v"
alias mv="mv -v"
alias mkdir="mkdir -v"
alias rm="rm -v"
alias grep="grep --color"

# alias head="sed 11q"

alias vim="emacsclient" # lmao, also remember to have emacs as a deamon.
alias irssi="irssi --config=$XDG_CONFIG_HOME/irssi/config --home=$XDG_CONFIG_HOME/irssi"
alias r="ranger" # I don't really use it
alias gcc="gcc-10"

# Please shut the fuck up
xset -b

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion
