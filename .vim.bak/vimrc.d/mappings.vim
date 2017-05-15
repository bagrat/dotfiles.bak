noremap <leader>= =

" Window quick resize
noremap = :vertical resize +2<CR>:echo<CR>
noremap - :vertical resize -2<CR>:echo<CR>
noremap + :resize +2<CR>:echo<CR>
noremap _ :resize -2<CR>:echo<CR>

" bash-like home/end
noremap <C-a> ^
imap <C-a> <Esc><C-a>i
noremap <C-e> $
imap <C-e> <Esc><C-e>a

" TODO: take to buffalo
noremap <C-t> :e<CR>
noremap <Tab> :call buffalo#next()<CR>:echo<CR>
noremap <S-Tab> :call buffalo#prev()<CR>:echo<CR>
noremap <leader><Tab> :call CloseBuffer()<CR>

noremap J <C-e>
noremap K <C-y>

noremap <leader>q :q<CR>
noremap <leader>Q :qal!<CR><Esc>

noremap <leader>l :nohl<CR>

" Stay selected in visual mode
vnoremap > ><CR>gv
vnoremap < <<CR>gv

vmap <C-r> "_dP

" Easy conflict resolution
if &diff
    noremap z<up> :diffupdate<cr>
    noremap z<left> :diffget LO<cr>
    noremap z<right> :diffget RE<cr>
    noremap z<down> :diffget BA<cr>
    noremap <cr> ]c
    noremap \ [c
endif

" TODO: Take to NERDTree with NERDTreeFind
noremap <leader>a :echo expand("%")<CR>

noremap <silent> <leader>s :set spell!<CR>
