" Buffer Colors
hi BuffaloCurrent ctermfg=7 ctermbg=8 gui=bold
hi BuffaloActive ctermfg=11 ctermbg=10
hi BuffaloHidden ctermfg=8 ctermbg=10
hi BuffaloFill ctermfg=0 ctermbg=10

" Separator Colors
hi BuffaloRSepHiddenHidden ctermfg=8 ctermbg=10
hi default link BuffaloRSepHiddenLast BuffaloRSepHiddenHidden
hi default link BuffaloRSepActiveHidden BuffaloRSepHiddenHidden
hi default link BuffaloLSepHiddenActive BuffaloRSepHiddenHidden
hi default link BuffaloRSepActiveActive BuffaloRSepHiddenHidden

hi BuffaloRSepCurrentHidden ctermfg=8 ctermbg=10
hi BuffaloLSepHiddenCurrent ctermfg=10 ctermbg=8
hi BuffaloRSepCurrentActive ctermfg=8 ctermbg=10
hi BuffaloLSepActiveCurrent ctermfg=10 ctermbg=8

" hi BuffaloRSepActiveHidden ctermfg=11 ctermbg=10
" hi BuffaloLSepHiddenActive ctermfg=10 ctermbg=11

hi default link BuffaloRSepCurrentLast BuffaloRSepCurrentHidden
hi default link BuffaloRSepActiveLast BuffaloRSepActiveHidden

" Separator Symbols
let g:buffalo_rsep_current_hidden = "\u2b80"
let g:buffalo_rsep_current_active = "\u2b80"
let g:buffalo_lsep_hidden_current = "\u2b80"
let g:buffalo_lsep_active_current = "\u2b80"

let g:buffalo_lsep_hidden_active = "\u2b81"
let g:buffalo_rsep_active_hidden = "\u2b81"

let g:buffalo_rsep_hidden_hidden = "\u2b81"

let g:buffalo_rsep_hidden_last = "\u2b81"
let g:buffalo_rsep_current_last = "\u2b80"
let g:buffalo_rsep_active_last = "\u2b81"
