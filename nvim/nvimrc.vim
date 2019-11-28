call plug#begin()
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kien/ctrlp.vim'
Plug 'rhysd/clever-f.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'rust-lang/rust.vim'
Plug 'pbondoer/vim-42header'
Plug 'roxma/nvim-yarp'
Plug 'kshenoy/vim-signature'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-signify'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'drmikehenry/vim-headerguard'
call plug#end()

"Set custom tab width according to language
autocmd FileType c,asm,s,php,html set ts=4 sw=4
set expandtab ts=2 sw=2

inoremap kj <esc>

" General config.
set nu
set mouse=a
set smarttab
set modeline
set ruler
set history=100
set nowrap
set title
set showmatch
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
"set cursor collumn and line coloration
let mapleader=";"
set background=dark
colorscheme gruvbox
"colorscheme minimalist

"copy/paste from/to clipboard
" set clipboard=unnamedplus

set wildignore+=*.so,*.a,*.o,*.zip,*.out,*.class

" leader
nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>w :set wrap<CR>
nmap <leader>f :ClangFormat<CR>

" Undo file.
set undofile
set undodir=$HOME/.vim/undodir
set undolevels=1000
set undoreload=10000
" swaps files

set directory=$HOME/.vim/swap/
" Hide coloration of found words

map <C-C> :nohlsearch<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"airline config
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'

" Signify settings
let g:signify_sign_add               = '┃'
let g:signify_sign_delete            = '┃'
let g:signify_sign_delete_first_line = '┃'
let g:signify_sign_change            = '┃'
let g:signify_sign_changedelete = g:signify_sign_change

inoremap () ()<left>
inoremap [] []<left>
inoremap "" ""<left>
inoremap '' ''<left>
inoremap {} {}<left>
inoremap <> <><left>
tnoremap kj <C-\><C-n>
