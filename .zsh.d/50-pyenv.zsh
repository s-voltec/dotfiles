# .lzshenvに書くとPATHの前方に/usr/bin等が来るので、.zshrc配下に置く
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(/usr/local/bin/pyenv init -)"
