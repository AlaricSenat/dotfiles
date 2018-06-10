#! /bin/bash

cp -rf vim "${HOME}"/.vim
cp -f vimrc "${HOME}"/.vimrc 
vim +PlugInstall +q +q
cp -r vim/colors "${HOME}"/.vim/
