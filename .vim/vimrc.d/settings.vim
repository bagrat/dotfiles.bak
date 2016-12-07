" filetype on
" set encoding=utf-8

" " Tabs & Spaces
" set expandtab
" set smarttab
" set shiftwidth=4
" set tabstop=8
" set softtabstop=4
" set backspace=indent,eol,start

" autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
" autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab

" autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
" autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

" " UI/UX Settings
" set number  " Line numbers, always!
" set hidden  " Ok with unsaved buffers while switching between
" set lazyredraw  " Don't bother redrawing all the time
" set splitbelow
" set splitright
" set scrolloff=4
" set fillchars=vert:┃,stl:\ ,stlnc:\ 


" " Line wrapping and display
" set linebreak  " default `breakat` is pretty ok
" set textwidth=80
" set formatoptions+=qrnj1  " The flexible way to write/edit comments

" " Search
" set ignorecase
" set smartcase
" set incsearch
" set showmatch
" set hlsearch

" " General Settings
" set foldlevel=0
" set fileformat=unix
" set clipboard=unnamed
" set shell=bash
" set history=1000
" set undoreload=10000
" set pastetoggle=<leader>p
" set autowrite
" set autoread
" set t_vb=
" " set cursorline
" set noshowmode
" set ttimeout
" set ttimeoutlen=50
" set modelines=0
" set shiftround
" set cmdheight=1
" set laststatus=2

" " TODO clean these, and update Pmenu colors
" " set completeopt=longest,menuone,preview,noinsert
" " set ruler

" " Wildmenu
" set wildmenu
" set wildmode=full
" set wildignore+=.hg,.git,.svn
" set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
" set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest
" set wildignore+=*.sw?
" set wildignore+=*.DS_Store
" set wildignore+=migrations
" set wildignore+=*.pyc
" set wildignore+=*.orig
" " TODO: Update coloring

" " Spelling
" set spelllang=en_us

" " Backups
" set undodir=~/.vim/tmp/undo//
" set directory=~/.vim/tmp/swap//
" set undofile
" set noswapfile


" " Neovim
" if has('nvim')
"     set mouse="0"
" endif
