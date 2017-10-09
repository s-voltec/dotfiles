#!/bin/bash

for f in $(ls -a | grep -vE "^\.$|^\.\.$|^\.git$|^\.readme\.md$|^setup\.sh$|^init$"); do
    if [ -e ${HOME}/${f} ]; then
	mkdir -p ${HOME}/dotfiles.bak.d
	mv ${HOME}/${f} ${HOME}/dotfiles.bak.d/
    fi
    ln -s $(pwd)/${f} ${HOME}/
done

for i in $(ls ./init); do
    bash ./init/${i}
done

