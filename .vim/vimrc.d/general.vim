colorscheme solarized
set background=dark

hi! VertSplit ctermfg=10 ctermbg=10
hi! StatusLine ctermfg=10 ctermfg=10
hi! NonText ctermfg=8 ctermbg=8 cterm=None

augroup vimrc
    au!
    au BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END

let mapleader=','

autocmd InsertLeave * :pc
