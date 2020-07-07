#  qorg'1 config for the Boomer approved Shell .bashrc

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

# Uncomment if you get errors at gpg singing or decrypting. You can
# also try installing pinentry-dmenu for example.

# export GPG_TTY=$(tty)

# Prompt

PS1="\[\033[38;5;10m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;12m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[38;5;1m\]λ\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# End prompt

# so bash don't care about cases

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
alias xi="doas xbps-install"
alias up="doas xbps-install -Syu"
alias xr="doas xbps-remove"
alias xrf="doas xbps-remove -F"
alias xq="xbps-query"

# Debian alias

alias ai="doas apt install"
alias arr="doas apt --purge remove" # arr instead of ar because there's ar(1)
alias au="doas apt update && doas apt upgrade"

# I don't use Arch (god save me) but if someone does. Heres your poison:

alias pi="doas pacman -S"
alias pr="doas pacman -R"
alias prf="doas pacman -Rc"
alias pu="doas pacman -Syu"


# alias head="sed 11q"


alias irssi="irssi --config=$XDG_CONFIG_HOME/irssi/config --home=$XDG_CONFIG_HOME/irssi"
alias r="ranger" # I don't really use it
alias dx="wine .wine/drive_c/GOG\ Games/Deus\ Ex\ GOTY/System/DeusEx.exe INI=\"..\GMDXv9\System\gmdx.ini\" USERINI=\"..\GMDXv9\System\GMDXUser.ini\""
# Please shut the fuck up
xset -b
# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion
