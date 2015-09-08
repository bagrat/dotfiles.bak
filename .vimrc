" Color scheme
set background=dark
colorscheme solarized

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'jistr/vim-nerdtree-tabs'
call vundle#end()


filetype indent plugin on
syntax on
 
" set cursorline

let mapleader=','

set wildmenu
" set showcmd
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
set tw=0
set clipboard=unnamed
 

" Indentation Configuration
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set shell=bash\ --login

" Mappings
noremap Y yg$

noremap <C-L> :nohl<CR>
inoremap <C-L> :nohl<CR>

noremap <Up> gk
imap <Up> <Esc><Up>a
noremap <Down> gj
imap <Down> <Esc><Down>a
noremap <C-a> g0
imap <C-a> <Esc><C-a>i
noremap <C-e> g$
imap <C-e> <Esc><C-e>a

noremap <C-h> <C-w>h
imap <C-h> <Esc><C-h>
noremap <C-j> <C-w>j
imap <C-j> <Esc><C-j>
noremap <C-k> <C-w>k
imap <C-k> <Esc><C-k>
noremap <C-l> <C-w>l
imap <C-l> <Esc><C-l>

noremap + :vertical resize +2<CR>
noremap _ :vertical resize -2<CR>
noremap = :resize +2<CR>
noremap - :resize -2<CR>


nnoremap <leader>s :mksession<CR>

noremap e :e 
noremap <C-t> :tabnew<CR> 
imap <C-t> <Esc><C-t>
noremap <leader>t :NERDTreeTabsToggle<CR>

noremap <Tab> gt
noremap <S-Tab> gT

noremap <C-x> :wq<CR>
noremap <C-y> :q!<CR>
noremap \ :qal!<CR>
map <C-d> <C-x>

cnoremap W w
cnoremap Q q

noremap <leader>py :w<CR>:!pyt_run %<CR>
augroup pythons
    autocmd!
    autocmd FileType python nmap <C-p> <leader>py<cr>
    autocmd FileType python imap <C-p> <Esc><leader>py<cr>i
augroup END

noremap <C-c><C-c> ggvGy<Esc>

vnoremap > ><CR>gv 
vnoremap < <<CR>gv 
vmap <Tab> >
vmap <S-Tab> <

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>rv :w<cr>:source $MYVIMRC<cr>

" Abbreviations
iabbrev adn and
iabbrev waht what
iabbrev taht that

" NERDTree Configuration
let g:nerdtree_tabs_open_on_console_startup=1
