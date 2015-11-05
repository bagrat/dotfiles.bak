set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mbbill/undotree'

Plugin 'davidhalter/jedi-vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'scrooloose/syntastic'

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'santiycr/grin.vim'
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()

filetype indent plugin on
syntax on

augroup vimrc
    au!
    au BufWritePost .vimrc so $MYVIMRC
augroup END

autocmd! BufWritePost .vimrc source $MYVIMRC
let mapleader=','


" Color scheme
colorscheme solarized
set background=dark


" General
set fileformat=unix
set number
set modelines=0
set hidden
set history=1000
set undoreload=10000
set shell=bash
set showbreak=>
set splitbelow
set splitright
set backspace=indent,eol,start
" TODO: patch fonts
" set fillchars=
" set guifont=
set autowrite
set autoread
set shiftround
set title
set cursorline
set noshowmode
set ttimeout
set ttimeoutlen=50
" TODO: test this
" set viminfo='100,<1000100,%,:5
set scrolloff=4
set completeopt=longest,menuone,preview,noinsert
set ruler
set laststatus=2
set t_vb=
set cmdheight=1
set pastetoggle=<F9>
set clipboard=unnamed


" Tabs & Spaces
set expandtab
set smarttab
set shiftwidth=4
set tabstop=8
set softtabstop=4
au BufNewFile,BufReadPost *.css,*.html,*.js,*.json set shiftwidth=2


" Wildmenu
set wildmenu
set wildmode=full
set wildignore+=.hg,.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest
set wildignore+=*.sw?
set wildignore+=*.DS_Store
set wildignore+=migrations
set wildignore+=*.pyc
set wildignore+=*.orig


" Line wrapping and display
set wrap
set linebreak  " default `breakat` is pretty OK
set textwidth=80
set formatoptions+=qrn1
set foldlevel=0


" Search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch


" Backups
set undodir=~/.vim/tmp/undo//
set directory=~/.vim/tmp/swap//
set undofile
set noswapfile


" Auto commands
autocmd InsertLeave * :pc


" Key Mappings
noremap <C-h> <C-w>h
imap <C-h> <Esc><C-h>
noremap <C-j> <C-w>j
imap <C-j> <Esc><C-j>
noremap <C-k> <C-w>k
imap <C-k> <Esc><C-k>
noremap <C-l> <C-w>l
imap <C-l> <Esc><C-l>

noremap L :vertical resize +2<CR>:echo<CR>
noremap H :vertical resize -2<CR>:echo<CR>
noremap K :resize +2<CR>:echo<CR>
noremap J :resize -2<CR>:echo<CR>

noremap <C-a> g^
imap <C-a> <Esc><C-a>i
noremap <C-e> g$
imap <C-e> <Esc><C-e>a

noremap <C-t> :tabnew<CR> 
imap <C-t> <Esc><C-t>
noremap <leader>t :NERDTreeTabsToggle<CR>

noremap <Tab> gt
noremap <S-Tab> gT

noremap <leader>q :q!<CR>
noremap <leader>Q :qal!<CR>

noremap <leader>ss :setlocal spell spellang=en_us<cr>
inoremap <leader>s <C-X>s
noremap <leader>l :nohl<CR>

" noremap <C-f> /\v
" inoremap <C-Space> <C-x><C-o>

" Stay selected in visual mode
vnoremap > ><CR>gv
vnoremap < <<CR>gv

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>rv :w<cr>:source $MYVIMRC<cr>

" Copy the while file contents
noremap <C-c><C-c> gg0vG$y<Esc>
" Run the python file and start interpreter
autocmd FileType python <leader>py :w<CR>:!pyt_run %<CR>

" This is for editing test files with long wrapping lines
augroup text
    autocmd!
    autocmd FileType tex noremap <Up> gk
    autocmd FileType tex imap <Up> <Esc><Up>a
    autocmd FileType tex noremap <Down> gj
    autocmd FileType tex imap <Down> <Esc><Down>a
    autocmd FileType tex noremap <C-a> g0
    autocmd FileType tex imap <C-a> <Esc><C-a>i
    autocmd FileType tex noremap <C-e> g$
    autocmd FileType tex imap <C-e> <Esc><C-e>a
augroup END

" Easy conflict resolution
if &diff
    noremap z<up> :diffupdate<cr>
    noremap z<left> :diffget LO<cr>
    noremap z<right> :diffget RE<cr>
    noremap z<down> :diffget BA<cr>
    noremap <cr> ]c
    noremap \ [c
endif

