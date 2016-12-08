for f in split(glob('~/.vim/vimrc.d/_*.vim'), '\n')
    exe 'source' f
endfor

call plug#begin('~/.vim/plugged')

" General
" Plug 'tpope/vim-unimpaired'  " Text Bubbling
" Plug 'SirVer/ultisnips'  " Snippents!
" Plug 'tpope/vim-commentary'  " Comment things out
" Plug 'rking/ag.vim'
" Plug 'Chun-Yang/vim-action-ag'
" Plug 'schickling/vim-bufonly'
" Plug 'n9code/vim-buffalo'
" Plug 'ntpeters/vim-better-whitespace'

" " All about files
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'ryanoasis/vim-devicons'

" " Git plugins
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'

" " Misc
" Plug 'mhinz/vim-startify'
" " Plug 'itchyny/lightline.vim'

" " Python
" Plug 'vim-scripts/indentpython.vim'
" Plug 'n9code/python-syntax'
" Plug 'davidhalter/jedi-vim'
" let python_version_2 = 1

Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'

" " VIM Plugins
" if !has('nvim')
"     Plug 'scrooloose/syntastic'
" " NeoVIM Plugins
" else
"     Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
"     let g:jedi#completions_enabled = 0
"     Plug 'zchee/deoplete-jedi'
"     Plug 'neomake/neomake'
" endif

call plug#end()

for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
    if f =~ "^[^_]"
        exe 'source' f
    endif
endfor
