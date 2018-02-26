#!/bin/bash

set -x
mkdir test
cd test
pwd

bash <(curl -s https://raw.githubusercontent.com/bagrat/dotfiles/master/test-web.sh) > out.txt
RESULT=`cat out.txt` && if [ "$RESULT" != 'It Works!' ]; then echo "FAIL"; exit 1; else echo "SUCCESS"; fi

../install.sh > out.txt
RESULT=`cat out.txt` && if [[ "$RESULT" =~ .*Installing.*Done.* ]]; then echo "SUCCESS"; else echo "FAIL"; exit 1; fi
