#!/bin/bash

# set -x
# When on my personal laptop, I do not need the hostname in the prompt
if [[ "`hostname`" =~ ^(bagrat13|Bagrat-Aznauryan-NAT).*$ ]]
then
    export HELLO_ITS_ME=1
else
    export HELLO_ITS_ME=0
fi

MY_KERNEL=`uname -s`

case "$MY_KERNEL" in
    Linux)
        export IS_LINUX=1
        export IS_MAC=0
        ;;
    Darwin)
        export IS_LINUX=0
        export IS_MAC=1
        ;;
    *)
        export IS_LINUX=0
        export IS_MAC=0
        ;;
esac


for file in ~/.bashrc.d/*
do
    if [ -f "$file" ]
    then
        source $file
    fi
done
source ~/.bash_completion

## Base environment variables ##
export HISTCONTROL=ignoredups:erasedupss
shopt -s histappend

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export CLICOLOR=1

ulimit -n 8192
