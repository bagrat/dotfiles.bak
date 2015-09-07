" Color scheme
set background=dark
colorscheme solarized

set nocompatible
filetype indent plugin on
syntax on
 
" set cursorline

let mapleader=','

set wildmenu
set showcmd
set lazyredraw


" Search Configuration
set showmatch
set hlsearch
set incsearch

set ttyfast
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set t_vb=
set mouse=a
set cmdheight=1
set number
set notimeout ttimeout ttimeoutlen=200
set visualbell
set pastetoggle=<F9>
 

" Indentation Configuration
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4


" Mappings
map Y yg$

map <C-L> :nohl<CR>
imap <C-L> :nohl<CR>

map <Up> gk
imap <Up> <Esc><Up>a
map <Down> gj
imap <Down> <Esc><Down>a
map <C-a> g0
imap <C-a> <Esc><C-a>i
map <C-e> g$
imap <C-e> <Esc><C-e>a

nnoremap <leader>s :mksession<CR>

map <C-t> :tabnew<CR>:e 
imap <C-t> <Esc><C-t>

map <Tab> gt
map <S-Tab> gT

map <C-x> :wq<CR>
map <C-d> <C-x>

cmap W w
cmap Q q

map <leader>py :w<CR>:silent !clear<CR>:silent !cat -n %<CR>:silent !echo "------------------------------------------"<CR>:!python -i %<CR>

map <C-c><C-c> ggvGy<Esc>

set clipboard=unnamed
