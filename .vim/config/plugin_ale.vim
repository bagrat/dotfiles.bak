let g:ale_sign_column_always = 1
let g:ale_sign_error = "\uf06a"
let g:ale_sign_warning = "\uf071"

let g:ale_statusline_format = ["\uf06a %d", "\uf071 %d", "\uf058"]

let g:ale_echo_msg_error_str = "\uf06a"
let g:ale_echo_msg_warning_str = "\uf071"
let g:ale_echo_msg_format = " \uf0ad %linter% \ue216  %severity% %s"

function! s:set_colors()
    exec "hi! ALEErrorSign ctermfg=1 ctermbg=" . synIDattr(hlID('SignColumn'),'bg')
    exec "hi! ALEWarningSign ctermfg=3 ctermbg=" . synIDattr(hlID('SignColumn'),'bg')
endfunction

augroup set_colors_ale
    autocmd!
    autocmd ColorScheme * call s:set_colors()
augroup end

" Set solors also at the startup
call s:set_colors()
