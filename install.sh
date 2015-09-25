#!/bin/bash
# Find the absolute path to the dotfiles
echo "Installing dotfiles"
echo "-------------------"

ABS="$(pwd)/$(dirname $0)"

BASH_DIR='.'
VIM_DIR='.'
BAK_DIR=~/.backup

BASH_FILES=(".bashrc" ".bashrc.d" ".bash_completion" ".bash_completion.d" ".inputrc")
VIM_FILES=(".vimrc" ".vim")

function install_file {
    PREFIX=$1
    FILE=$2
    DEST=$3

    ABSOLUTE="$ABS/$PREFIX/$FILE"
    echo "Installing $FILE..."

    ln -sf "$ABSOLUTE" "$DEST/$FILE"
}

mkdir -p "$BAK_DIR"

for file in ${BASH_FILES[@]}
do
    mv ~/$file $BAK_DIR
    install_file "$BASH_DIR" "$file" ~
done

for file in ${VIM_FILES[@]}
do
    mv ~/$file $BAK_DIR
    install_file "$VIM_DIR" "$file" ~
done

