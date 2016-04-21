for f in split(glob('~/.vim/vimrc.d/_*.vim'), '\n')
    exe 'source' f
endfor

set nocompatible
filetype off

if &compatible
  set nocompatible
endif
set runtimepath^=~/.vim/bundle/dein.vim

call dein#begin(expand('~/.cache/dein'))

if dein#check_install()
    call dein#install()
endif

call dein#add('VundleVim/Vundle.vim')

call dein#add('n9code/vim-buffalo')
call dein#add('itchyny/lightline.vim')
call dein#add('mbbill/undotree')
call dein#add('vim-scripts/BufOnly.vim')

call dein#add('davidhalter/jedi-vim')
call dein#add('jmcantrell/vim-virtualenv')
call dein#add('scrooloose/syntastic')
call dein#add('vim-scripts/indentpython.vim')

call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('tpope/vim-commentary')
call dein#add('rking/ag.vim')
call dein#add('Chun-Yang/vim-action-ag')
call dein#add('ntpeters/vim-better-whitespace')

call dein#add('albfan/nerdtree')
call dein#add('albfan/nerdtree-git-plugin')
call dein#add('ryanoasis/vim-devicons')

call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')

call dein#add('tmux-plugins/vim-tmux-focus-events')
call dein#add('christoomey/vim-tmux-navigator')

call dein#add('nathanaelkane/vim-indent-guides')

call dein#end()

filetype indent plugin on
syntax on

for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor
