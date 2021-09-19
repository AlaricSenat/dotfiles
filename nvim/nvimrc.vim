call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'sonph/onehalf', { 'rtp': 'vim' }

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ziglang/zig.vim'
Plug 'beyondmarc/glsl.vim'
Plug 'JesseKPhillips/d.vim'
Plug 'stfl/meson.vim'
call plug#end()


inoremap kj <esc>
tnoremap kj <C-\><C-n>

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
set expandtab ts=2 sw=2
set wildignore+=*.so,*.a,*.o,*.zip,*.out,*.class,*.lo,*.la

" Leader
let mapleader=";"
nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>w :set wrap<CR>
nmap <leader>z :set foldmethod=syntax foldnestmax=1<CR>
nmap <leader>c :nohlsearch<CR>

" Undo files
set undofile
set undodir=$HOME/.vim/undodir
set undolevels=1000
set undoreload=10000

" Swaps files
set directory=$HOME/.vim/swap/

" FZF
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-g> :Rg<CR>
let g:fzf_layout = { 'down': '30%' }

" Enable true colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
