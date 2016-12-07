colorscheme solarized
set background=dark

hi! VertSplit ctermfg=10 ctermbg=8 cterm=NONE
hi! NonText ctermfg=8 ctermbg=8 cterm=NONE

hi! CursorLine ctermbg=236
hi! CursorLineNr ctermbg=236
hi! LineNr ctermbg=237
hi! Pmenu ctermbg=11 ctermfg=10
hi! PmenuSel ctermbg=7 ctermfg=2
hi! PmenuSbar ctermfg=247
hi! PmenuThumb ctermfg=2

let mapleader=','

autocmd InsertLeave * :pc  " Close all preview windows when leaving InsertMode
