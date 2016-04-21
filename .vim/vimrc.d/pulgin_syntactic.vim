augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost,BufReadPost *.py,*.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

hi SyntasticErrorSign ctermbg=0 ctermfg=1
hi SyntasticWarningSign ctermbg=0 ctermfg=3
hi SyntasticStyleErrorSign ctermbg=0 ctermfg=89
hi SyntasticStyleWarningSign ctermbg=0 ctermfg=21

let g:syntastic_error_symbol = '✕'
let g:syntastic_warning_symbol = 's»'
let g:syntastic_style_error_symbol = 's»'
let g:syntastic_style_warning_symbol = 's›'
