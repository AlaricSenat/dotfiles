#! /bin/bash

cp -rf vim "${HOME}"/.vim
mkdir -p "${HOME}"/.vim/swap
mkdir -p "${HOME}"/.vim/undodir
cp -f vimrc "${HOME}"/.vimrc 
pip3 install neovim
vim +PlugInstall +q +q
