noremap <Tab> :WSNext<CR>
noremap <S-Tab> :WSPrev<CR>
noremap <Leader><Tab> :WSClose<CR>
noremap <Leader><S-Tab> :WSClose!<CR>
noremap <C-t> :WSTabNew<CR>

cabbrev bonly WSBufOnly

let g:workspace_hide_ft_buffers = ['qf', 'help']

if $USE_SYMBOLS == 1
    let g:workspace_powerline_separators = 1
    let g:workspace_use_devicons = 1
    let g:workspace_tab_icon = "\uf00a"
    let g:workspace_left_trunc_icon = "\uf0a8"
    let g:workspace_right_trunc_icon = "\uf0a9"
else
    let g:workspace_powerline_separators = 0
    let g:workspace_use_devicons = 0
endif
