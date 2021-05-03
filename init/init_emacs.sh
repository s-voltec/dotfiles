if [ -e ${HOME}/.emacs.d ]; then
    mv ${HOME}/.emacs.d ${HOME}/emacs.d.bak
fi
if [ -e ${HOME}/.emacs ]; then
    mv ${HOME}/.emacs ${HOME}/emacs.bak
fi

git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d

