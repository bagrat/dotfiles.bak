
inoremap <silent><expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
inoremap <silent><expr> <C-@> pumvisible() ? "\<C-n>" : "\<C-x>\<C-o>"

let g:completor_disable_buffer = 1
let g:completor_complete_options = "menuone,nopreview"
