# PATH settings
typeset -U path
path=(
    ${HOME}/.bin(N-/)
    $path
)

# EDITOR settings
if type vim > /dev/null 2>&1; then
    export EDITOR=vim
elif type vi > /dev/null 2>&1; then
    export EDITOR=vi
elif type nano > /dev/null 2>&1; then
    export EDITOR=nano
else
    export EDITOR=
fi

# load local setting file
if [ -f ${HOME}/.zshenv_local ]; then
    source ${HOME}/.zshenv_local
fi

