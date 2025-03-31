#! /bin/bash

mkdir -p ~/.config/nvim
cp -r init.lua .stylua.toml lua/ ~/.config/nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

cp -r vale/ ~/.config/
~/.local/share/nvim/mason/packages/vale/vale --config=$HOME/.config/vale/.vale.ini sync
