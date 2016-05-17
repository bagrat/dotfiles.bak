for f in split(glob('~/.vim/vimrc.d/_*.vim'), '\n')
    exe 'source' f
endfor

set nocompatible
filetype off

if &compatible
  set nocompatible
endif

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'

Plug 'n9code/vim-buffalo'
Plug 'itchyny/lightline.vim'
Plug 'mbbill/undotree'
Plug 'vim-scripts/BufOnly.vim'

Plug 'jmcantrell/vim-virtualenv'
Plug 'vim-scripts/indentpython.vim'
Plug 'n9code/python-syntax'
let python_version_2 = 1

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'rking/ag.vim'
Plug 'Chun-Yang/vim-action-ag'
Plug 'ntpeters/vim-better-whitespace'

Plug 'albfan/nerdtree'
Plug 'albfan/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'davidhalter/jedi-vim'

" VIM Plugins
if !has('nvim')
    let g:deoplete#sources = get(g:,'deoplete#sources',{})
    Plug 'scrooloose/syntastic'

" NeoVIM Plugins
else
    Plug 'Shougo/deoplete.nvim'
    let g:deoplete#sources = get(g:,'deoplete#sources',{})
    Plug 'zchee/deoplete-jedi'
    let g:jedi#completions_enabled = 0
    Plug 'n9code/vim-deadbeef'
    Plug 'neomake/neomake'

endif

call plug#end()

filetype indent plugin on
syntax on

for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
    if f =~ "^[^_]"
        exe 'source' f
    endif
endfor
