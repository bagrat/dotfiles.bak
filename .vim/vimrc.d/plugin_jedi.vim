" Jedi-vim Configuration
" TODO: deal with signature suggestion
let g:jedi#show_call_signatures = 0
let g:jedi#use_tabs_not_buffers = 0

map <leader>b <leader>d
function! GotoInSplit()
    let g:jedi#use_splits_not_buffers = "winwidth"
    call jedi#goto()
    let g:jedi#use_splits_not_buffers = ""
endfunction
map <leader>B :call GotoInSplit()<CR>
