# /bin/bash

cp -rf vim "${HOME}"/.vim
mkdir -p "${HOME}"/.vim/swap
mkdir -p "${HOME}"/.vim/undodir
mkdir -p "${HOME}"/.config/nvim
cp -f coc-settings.json coc.vim init.vim nvimrc.vim vlc.vim "${HOME}"/.config/nvim
nvim +PlugInstall +q +q
