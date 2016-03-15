" Ag configuration
function! g:NNfind(pattern)
    execute "tabnew"
    echom "Searching for ".a:pattern
    execute "Ag! '".a:pattern."' '".g:init_dir."'"
    " TODO: change title to Search Results
endfunction
command! -nargs=* NNFind call g:NNfind('<args>')
noremap <leader>f :NNFind 
noremap <leader>F :NNFind <C-R><C-W><CR>
