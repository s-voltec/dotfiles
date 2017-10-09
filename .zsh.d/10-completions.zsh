# 補完を有効にする
autoload -U compinit
compinit -u

# 絞り込み補完を有効にする
zstyle ':completion:*' menu select interactive
setopt auto_menu
setopt menu_complete

# 補完候補に色をつける
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# 補完メッセージを読みやすくする
zstyle ':completion:*' verbose yes
zstyle ':completion:*:warnings' format 'No matches for: %d'
