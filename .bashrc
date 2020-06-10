# .bashrc

# ENVS
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export TERM=screen-256color
export INPUTRC="$XDG_CONFIG_HOME"/inputrc

export MPD_HOST="localhost"
export MPD_PORT="6601"

# Uncomment if you get errors at gpg singing or decrypting. You can also try installing pinentry-dmenu for example.

# export GPG_TTY=$(tty)

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
alias sxiv="sxiv -a"

# Void alias
alias xi="sudo xbps-install"
alias up="sudo xbps-install -Syu"
alias xr="sudo xbps-remove"
alias xrf="sudo xbps-remove -F"
alias xq="xbps-query"

# debian alias

alias ai="sudo apt install"
alias ar="sudo apt remove"
alias afr="sudo apt --purge remove"

# alias head="sed 11q"

alias vim="emacsclient" # lmao, also remember to have emacs as a deamon.
alias irssi="irssi --config=$XDG_CONFIG_HOME/irssi/config --home=$XDG_CONFIG_HOME/irssi"
alias r="ranger" # I don't really use it
alias dx="wine .wine/drive_c/GOG\ Games/Deus\ Ex\ GOTY/System/DeusEx.exe INI=\"..\GMDXv9\System\gmdx.ini\" USERINI=\"..\GMDXv9\System\GMDXUser.ini\""
# Please shut the fuck up
xset -b
# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion
