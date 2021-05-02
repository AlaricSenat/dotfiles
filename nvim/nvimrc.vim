call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'rhysd/clever-f.vim'
Plug 'pbondoer/vim-42header'
Plug 'drmikehenry/vim-headerguard'
Plug 'arcticicestudio/nord-vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ziglang/zig.vim'
Plug 'beyondmarc/glsl.vim'
Plug 'JesseKPhillips/d.vim'
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
"
"set cursor column and line coloration
let mapleader=";"

set wildignore+=*.so,*.a,*.o,*.zip,*.out,*.class,*.lo,*.la

" leader
nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>w :set wrap<CR>
nmap <leader>z :set foldmethod=syntax foldnestmax=1<CR>

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

tnoremap kj <C-\><C-n>

set background=dark
colorscheme nord

set guifont=Fira\ Code:h12
