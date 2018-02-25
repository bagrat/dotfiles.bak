#!/bin/bash

echo "Installing dotfiles"
echo "-------------------"

# Find the absolute path to the dotfiles
DOTFILES="`dirname \`realpath install.sh\``"

function maybe_backup {
    DEST="$1"

    if [ -z "$SRC" ] || [ -z "$DEST" ]
    then
        echo "Error: Please specify a file or directory name"
        exit 1
    fi

    if [ -e "$DEST" ]
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
        echo "Error: Please specify source and destination"
        exit 1
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
    install_file "$DOTFILES/$FILE" "$HOME/$FILE"
done

echo "Installing vim plugins"
vim +PlugInstall +q +q

echo "Done!"
