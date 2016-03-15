noremap <C-h> <C-w>h
imap <C-h> <Esc><C-h>
noremap <C-j> <C-w>j
imap <C-j> <Esc><C-j>
noremap <C-k> <C-w>k
imap <C-k> <Esc><C-k>
noremap <C-l> <C-w>l
imap <C-l> <Esc><C-l>

noremap <leader>= =

noremap = :vertical resize +2<CR>:echo<CR>
noremap - :vertical resize -2<CR>:echo<CR>
noremap + :resize +2<CR>:echo<CR>
noremap _ :resize -2<CR>:echo<CR>

noremap <C-a> g^
imap <C-a> <Esc><C-a>i
noremap <C-e> g$
imap <C-e> <Esc><C-e>a

noremap <C-t> :e<CR>

noremap <Tab> :call buffalo#next()<CR>:echo<CR>
noremap <S-Tab> :call buffalo#prev()<CR>:echo<CR>

noremap <leader>q :q<CR>
noremap <leader><Tab> :bd<CR>
noremap <leader>Q :qal!<CR><Esc>

noremap <leader>ss :setlocal spell spellang=en_us<cr>
inoremap <leader>s <C-X>s
noremap <leader>l :nohl<CR>

" Stay selected in visual mode
vnoremap > ><CR>gv
vnoremap < <<CR>gv
map <leader>/ gcc
vmap <leader>/ gc

vmap <C-r> "_dP

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>rv :w<cr>:source $MYVIMRC<cr>

" Copy the while file contents
noremap <C-c><C-c> gg0vG$y<Esc>

" Easy conflict resolution
if &diff
    noremap z<up> :diffupdate<cr>
    noremap z<left> :diffget LO<cr>
    noremap z<right> :diffget RE<cr>
    noremap z<down> :diffget BA<cr>
    noremap <cr> ]c
    noremap \ [c
endif

noremap <leader>a :echo expand("%")<CR>
