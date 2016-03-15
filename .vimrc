for f in split(glob('~/.vim/vimrc.d/_*.vim'), '\n')
    exe 'source' f
endfor

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'n9code/vim-buffalo'
Plugin 'itchyny/lightline.vim'
Plugin 'mbbill/undotree'
Plugin 'vim-scripts/BufOnly.vim'

Plugin 'davidhalter/jedi-vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/indentpython.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'rking/ag.vim'
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'albfan/nerdtree'
Plugin 'albfan/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()

filetype indent plugin on
syntax on

for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor
