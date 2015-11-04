#!/bin/bash
# Find the absolute path to the dotfiles
echo "Installing dotfiles"
echo "-------------------"

ABS="$(pwd)/$(dirname $0)"

echo "source \"${ABS}/.bashrc\"" >> ~/.bashrc
echo "source-file \"${ABS}/.tmux.conf\"" >> ~/.tmux.conf
echo "source \"${ABS}/.vimrc\"" >> ~/.vimrc

