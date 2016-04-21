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
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/indentpython.vim'

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

" VIM Plugins
if !has('nvim')
    Plug 'davidhalter/jedi-vim'
    let g:deoplete#sources = get(g:,'deoplete#sources',{})

" NeoVIM Plugins
else
    Plug 'Shougo/deoplete.nvim'
    let g:deoplete#sources = get(g:,'deoplete#sources',{})
    Plug 'zchee/deoplete-jedi'
    Plug 'n9code/vim-deadbeef'

endif

call plug#end()

filetype indent plugin on
syntax on

for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor
