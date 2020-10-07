#  qorg'1 config for the Boomer approved Shell .bashrc

# ENVS
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export TERM=screen-256color
export INPUTRC="$XDG_CONFIG_HOME"/inputrc
export BROWSER="palemoon"
export EDITOR="emacs -nw -q"

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
alias ls="ls --color=auto -p"
alias nano="emacs -q -nw"
alias torify="torsocks -q"

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
alias audiobg="ffmpeg -i $1c -i $2 -filter_complex \"[0:a][1:a]amerge,pan=stereo|c0<c0+c2|c1<c1+c3[out]\" -map 1:v -map \"[out]\" -c:v copy -shortest output.mp4"
alias 4chanm="ffmpeg -i $1 -vcodec libvpx -acodec libvorbis $2"
alias irssi="irssi --config=$XDG_CONFIG_HOME/irssi/config --home=$XDG_CONFIG_HOME/irssi"
alias r="ranger" # I don't really use it
alias dx="wine .wine/drive_c/GOG\ Games/Deus\ Ex\ GOTY/System/DeusEx.exe INI=\"..\GMDXv9\System\gmdx.ini\" USERINI=\"..\GMDXv9
\System\GMDXUser.ini\""
alias curl="torsocks -q wget -qO-"
# Please shut the fuck up
xset -b
# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

PATH="/home/qorg/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/qorg/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/qorg/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/qorg/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/qorg/perl5"; export PERL_MM_OPT;

        ix() {
            local opts
            local OPTIND
            [ -f "$HOME/.netrc" ] && opts='-n'
            while getopts ":hd:i:n:" x; do
                case $x in
                    h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;;
                    d) $echo curl $opts -X DELETE ix.io/$OPTARG; return;;
                    i) opts="$opts -X PUT"; local id="$OPTARG";;
                    n) opts="$opts -F read:1=$OPTARG";;
                esac
            done
            shift $(($OPTIND - 1))
            [ -t 0 ] && {
                local filename="$1"
                shift
                [ "$filename" ] && {
                    curl $opts -F f:1=@"$filename" $* ix.io/$id
                    return
                }
                echo "^C to cancel, ^D to send."
            }
            curl $opts -F f:1='<-' $* ix.io/$id
        }
