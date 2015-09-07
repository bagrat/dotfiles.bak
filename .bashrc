for file in ~/.bashrc.d/*
do
   source $file
done
source ~/.bash_completion

## Base environment variables ##
export HISTCONTROL=ignoredups:erasedupss
shopt -s histappend

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

