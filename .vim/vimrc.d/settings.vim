set encoding=utf-8
set lazyredraw
scriptencoding utf-8
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
set fillchars+=vert:\ 
set autowrite
set autoread
set shiftround
set title
set cursorline
set noshowmode
set ttimeout
set ttimeoutlen=50
set scrolloff=4
set completeopt=longest,menuone,preview,noinsert
set ruler
set laststatus=2
set t_vb=
set cmdheight=1
set pastetoggle=<F2>
set clipboard=unnamed

if has('nvim')
    set mouse="0"
endif


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
