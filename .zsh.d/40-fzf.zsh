FZF_DEFAULT_OPTS='--select-1 --exit-0'

# ヒストリ検索を拡張
function select-history() {
  BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
  CURSOR=$#BUFFER
}
zle -N select-history
bindkey '^r' select-history

# インクリメンタルファイル検索
function select-file() {
#  WORD=$(echo -n "${LBUFFER}" | perl -e 'my $buf = <STDIN>; my $i = rindex($buf, " "); if($i >= 0) { print substr($buf, $i + 1); } else { print $buf; }')
#  BUFFER=$(ls -a . | tail -n +2 | fzf --query "$WORD" --prompt="File > ")
#  CURSOR=$#BUFFER
  INDEX=$(echo -n "${LBUFFER}" | perl -e 'print(rindex(<STDIN>, " ") + 1);')
  if [[ ${INDEX} == '0' ]]; then
    # スペースが一つもないため、LBUFFER全体が補完対象
    WORD=${LBUFFER}
    HEAD=''
  else
    WORD=${LBUFFER[$(expr ${INDEX} + 1),-1]} # スペース区切りの最後の文字列
    HEAD=${LBUFFER[1,$(expr ${INDEX} - 1)]} # LBUFFERの WORD以外の部分
  fi
  WORD=$(ls -a . | tail -n +2 | fzf --query "${WORD}" --prompt="File > ")
  BUFFER="${HEAD} ${WORD}"
  CURSOR=${#BUFFER}
}
zle -N select-file
bindkey '^t' select-file

