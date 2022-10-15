#! /bin/bash

mkdir -p ~/.config/nvim
cp -r init.lua lua/ ~/.config/nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
