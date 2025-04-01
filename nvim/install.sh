#! /bin/bash

mkdir -p ~/.config/nvim
cp -r init.lua .stylua.toml lua/ ~/.config/nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
