#!/bin/bash
echo "Installing dotfiles"
echo "-------------------"

# Find the absolute path to the dotfiles
ROOT="`cd \"$(pwd)/$(dirname $0)\"; pwd`"

function node_exists {
    ls "$1" &> /dev/null;
    if [ $? != 0 ]
    then
            echo 0
    else
            echo 1
    fi
}

function maybe_backup {
    DEST="$1"
    if [ `node_exists "$DEST"` == 1 ]
    then
            echo "    $DEST already exists, backing up..."
            mv "$DEST" "$DEST.bak.`date +%s`"
    fi
}

function install_file {
    SRC=$1
    DEST=$2

    if [ -z "$SRC" ] || [ -z "$DEST" ]
    then
            echo "Please specify source and destination"
            return 1
    fi
    echo "Installing file: $DEST"

    maybe_backup "$DEST"
    ln -s "$SRC" "$DEST"
}

FILES=(".bashrc" ".bashrc.d" ".bash_compl" ".bash_compl.d" ".inputrc"
       ".vimrc" ".vim"
       ".tmux.conf" ".tmux"
       ".venv.d")

for FILE in ${FILES[@]}
do
	install_file "$ROOT/$FILE" ~/$FILE
done

maybe_backup "~/.config"
mkdir ~/.config
ln -s ~/.vim ~/.config/nvim
install_file "$ROOT/.vim/init.vim" ~/.vimrc
echo "Installing vim plugins"
vim +PlugInstall +q +q

echo "Done!"
