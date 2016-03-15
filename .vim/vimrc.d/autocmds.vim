augroup Python
    autocmd!
    autocmd FileType python noremap <leader>py :w<CR>:!pyt_run %<CR>
    " autocmd FileType python VirtualEnvActivate
augroup END


" This is for editing test files with long wrapping lines
augroup text
    autocmd!
    autocmd FileType tex noremap <Up> gk
    autocmd FileType tex imap <Up> <Esc><Up>a
    autocmd FileType tex noremap <Down> gj
    autocmd FileType tex imap <Down> <Esc><Down>a
    autocmd FileType tex noremap <C-a> g0
    autocmd FileType tex imap <C-a> <Esc><C-a>i
    autocmd FileType tex noremap <C-e> g$
    autocmd FileType tex imap <C-e> <Esc><C-e>a
augroup END
