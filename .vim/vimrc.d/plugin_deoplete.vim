let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 3


if has('nvim')
    let b:deoplete_ignore_sources = ['buffer']

    inoremap <silent><expr><C-@> deoplete#mappings#manual_complete()
    inoremap <silent><expr> <CR>
                    \ pumvisible() ?
                    \ deoplete#mappings#close_popup() :
                    \ "\<CR>"

    inoremap <silent><expr> <C-Space>
		\ pumvisible() ? "\<C-n>" :
		\ deoplete#mappings#manual_complete()
endif
