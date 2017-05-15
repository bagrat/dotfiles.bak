colorscheme solarized
set background=dark

" Simply setting highlights does not work.
" We need to hook it by the ColorScheme event.
function! s:set_colors()
    hi! VertSplit ctermfg=10 ctermbg=8 cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi! EndOfBuffer ctermfg=8 ctermbg=8 cterm=NONE guibg=NONE guifg=NONE gui=NONE

    hi! CursorLine ctermbg=236 ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi! CursorLineNr ctermbg=236 ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi! LineNr ctermbg=237 ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi! SignColumn ctermbg=237 ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi! FoldColumn ctermbg=237 ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi! Pmenu ctermbg=11 ctermfg=10 cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi! PmenuSel ctermbg=7 ctermfg=2 cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi! PmenuSbar ctermfg=247 ctermbg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi! PmenuThumb ctermfg=2 ctermbg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE

    hi! StatusLine ctermbg=10 ctermfg=2 cterm=None guibg=NONE guifg=NONE gui=NONE
    hi! WildMenu ctermbg=10 ctermfg=3 cterm=bold,underline guibg=NONE guifg=NONE gui=NONE
    hi! StatusLineNC ctermbg=10 ctermfg=10 cterm=NONE guibg=NONE guifg=NONE gui=NONE

    hi! Folded ctermbg=8 ctermfg=6 cterm=bold,italic
    hi! FoldColumn ctermbg=237 ctermfg=237

    hi! String ctermfg=13 ctermbg=8
    hi! link Number String
    hi! link Boolean String
endfunction

augroup set_colors
    autocmd!
    autocmd ColorScheme * call s:set_colors()
augroup end

" Set solors also at the startup
call s:set_colors()
