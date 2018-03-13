let g:ale_sign_column_always = 1
let g:ale_sign_error = $SYMERROR
let g:ale_sign_warning = $SYMWARNING

let g:ale_statusline_format = [$SYMERROR . " %d", $SYMWARNING . " %d", $SYMOK]

let g:ale_echo_msg_error_str = $SYMERROR
let g:ale_echo_msg_warning_str = $SYMWARNING
let g:ale_echo_msg_format = " " . $SYMWRENCH . " %linter% " . $SYMSLACK . "  %severity% %s"

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
