# set Emacs key bindings
bindkey -e

# manage plugins
source ${HOME}/.zplug/init.zsh
zplug "zplug/zplug"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
#zplug "b4b4r07/enhancd", on:junegunn/fzf-bin, use:init.sh
if ! zplug check --verbose; then
    printf "Install plugin? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# load extra configurations
for conf in ${HOME}/.zsh.d/*.zsh; do
    source ${conf}
done

# load local settings
if [ -f ${HOME}/.zshrc_local ]; then
    source ${HOME}/.zshrc_local
fi

