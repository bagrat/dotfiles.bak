filetype plugin indent on
syntax on

" General Settings
set encoding=utf-8
set nocompatible  " 21 century?
set nobackup
set history=20
set hidden  " Make an unsaved buffer hidden when switching to another one
set clipboard=unnamed
set nowritebackup
set autoread
set cryptmethod="blowfish2"
set noswapfile
set viminfo=""

" UI
set splitbelow
set splitright
set scrolloff=4
set laststatus=2
set noruler
set noshowcmd
set noshowmode
set nomodeline
set number
set synmaxcol=200
set cursorline
set splitbelow
set splitright
set ttyscroll=3
set completeopt=menuone,preview,noinsert
set pumheight=10
set fillchars=vert:┃,stl:\ ,stlnc:\ 
set foldcolumn=1
set foldtext=FoldText()
" set colorcolumn  " TODO; experiment with this

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

" Search
set ignorecase
set smartcase
set incsearch  " realtime search results
set hlsearch

" Editing
set backspace=indent,eol,start
set showmatch
set matchtime=2  " Show match for 0.2 secs
set formatoptions=cqrnj1
set autoindent
set timeout
set ttimeout
set ttimeoutlen=1
set timeoutlen=600
set nomodeline

" Line wrapping and display
set linebreak  " default `breakat` is pretty ok
set textwidth=80
set formatoptions+=qrnj1  " The flexible way to write/edit comments

" Tabs & Spaces
set expandtab
set smarttab
set shiftwidth=4
set tabstop=8
set softtabstop=4
" Some specifics on filetype
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab

autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
