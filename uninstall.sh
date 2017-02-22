#!/bin/bash

ROOT_DIR=`pwd`/`dirname $0`

# remove auto completion
for file in $HOME/.bin/*; do
    rm $file 2>/dev/null
done

# remove bin path
for file in $HOME/.bash_completion.d/*; do
    rm $file 2>/dev/null
done

# remove rc
for file in $HOME/.bashrc.d/*; do
    rm $file 2>/dev/null
done

echo "Uninstalling sucess"
