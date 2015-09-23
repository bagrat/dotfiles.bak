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
Plugin 'tpope/vim-fugitive'
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

set exrc
set secure

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
 
set makeprg=make\ -j9

" Indentation Configuration
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set shell=bash\ --login

" Max column configuration
set colorcolumn=140
highlight ColorColumn ctermbg=darkgray

" Mappings
noremap Y yg$

noremap <leader>l :nohl<CR>
imap <leader>l <Esc>:nohl<CR>

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


noremap <C-a> g0
imap <C-a> <Esc><C-a>i
noremap <C-e> g$
imap <C-e> <Esc><C-e>i

noremap <C-t> :tabnew<CR> 
imap <C-t> <Esc><C-t>
noremap <leader>t :NERDTreeTabsToggle<CR>

noremap <Tab> gt
noremap <S-Tab> gT

noremap <C-y> :q!<CR>
noremap <leader>Q :qal!<CR>
map <C-d> <C-x>

noremap <leader>ss :setlocal spell spellang=en_us<cr>
inoremap <leader>s <C-X>s

noremap <C-f> /\v
imap <C-f> <Esc><C-f>

cnoremap W w
cnoremap Q q

inoremap <C-Space> <C-x><C-o>

noremap <leader>py :w<CR>:!pyt_run %<CR>
augroup pythons
    autocmd!
    autocmd FileType python nmap <C-p> <leader>py<cr>
    autocmd FileType python imap <C-p> <Esc><leader>py<cr>i
augroup END

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

augroup C_Project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
    autocmd BufRead,BufNewFile *.h,*.c let &path.="src/include,/usr/include/AL,"
augroup END
noremap <F5> :make<CR>
noremap <F5> :make run<CR>


if &diff
    noremap z<up> :diffupdate<cr>
    noremap z<left> :diffget LO<cr>
    noremap z<right> :diffget RE<cr>
    noremap z<down> :diffget BA<cr>
    noremap <cr> ]c
    noremap \ [c 
endif

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
" let g:nerdtree_tabs_open_on_console_startup=1
