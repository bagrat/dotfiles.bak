#!/bin/bash

cd
git clone --recursive git@github.com:bagrat/dotfiles.git .dotfiles
cd .dotfiles
./install.sh
