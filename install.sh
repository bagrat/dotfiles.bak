#!/bin/bash
echo "Installing dotfiles"
echo "-------------------"

# Find the absolute path to the dotfiles
ROOT="`cd \"$(pwd)/$(dirname $0)\"; pwd`"

function node_exists {
	ls "$1" &> /dev/null;
	if [ $? != 1 ]
	then
		echo 0
	else
		echo 1
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

	if [ `node_exists "$DEST"` == 1 ]
	then
		echo "    $DEST already exists, backing up..."
		mv "$DEST" "$DEST.bak.`date +%s`"
	fi
	ln -s "$SRC" "$DEST"
}

FILES=(".bashrc" ".bashrc.d" ".bash_completion" ".bash_completion.d" ".inputrc"
       ".vimrc" ".vim"
       ".tmux.conf" ".tmux")

for FILE in ${FILES[@]}
do
	install_file "$ROOT/$FILE" ~/$FILE
done

echo "Installing vim plugins"
vim +PluginInstall +q +q

echo "Done!"

