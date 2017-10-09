# ls color settings.
if type dircolors > /dev/null 2>&1 ; then
    eval $(dircolors)
fi;
export LS_COLORS
export ZLS_COLORS=$LS_COLORS
export CLICOLOR=true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
if ls --help 2>&1 | grep -q -- --color; then
    alias ls='ls --color=auto'
fi

# grep color settings.
alias grep='grep --color=auto'
