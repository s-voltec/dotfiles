# .lzshenvに書くとPATHの前方に/usr/bin等が来るので、.zshrc配下に置く
if type pyenv > /dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(/usr/local/bin/pyenv init -)"
  if type pyenv-virtualenv-init > /dev/null 2>&1; then
    eval "$(/usr/local/bin/pyenv virtualenv-init -)"
  fi
fi
