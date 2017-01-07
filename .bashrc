#!/bin/bash

# When on my personal laptop, I do not need the hostname in the prompt
if [[ "`hostname`" =~ ^n9code.* ]]
then
	export HELLO_ITS_ME=1
else
	export HELLO_ITS_ME=0
fi


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

# Setting PATH for Python 3.6
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
