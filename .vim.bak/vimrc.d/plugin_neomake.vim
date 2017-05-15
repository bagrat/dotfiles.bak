if has('nvim')
    hi NeomakeErrorSign ctermbg=0 ctermfg=1
    hi NeomakeWarningSign ctermbg=0 ctermfg=3
    hi NeomakeStyleErrorSign ctermbg=0 ctermfg=89
    hi NeomakeStyleWarningSign ctermbg=0 ctermfg=21

    let g:neomake_error_symbol = '✖'
    let g:neomake_warning_symbol = '⚠'
    let g:neomake_style_error_symbol = '✖'
    let g:neomake_style_warning_symbol = '⚠'

    let g:neomake_error_sign = {
        \ 'text': g:neomake_error_symbol,
        \ 'texthl': 'NeomakeErrorSign',
        \ }
    let g:neomake_warning_sign = {
        \ 'text': g:neomake_warning_symbol,
        \ 'texthl': 'NeomakeWarningSign',
        \ }

    augroup AutoSyntastic
        autocmd!
        autocmd BufWritePost,BufReadPost *.py Neomake
    augroup END
endif
