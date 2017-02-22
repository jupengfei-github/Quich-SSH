#!/bin/bash

ROOT_DIR=`pwd`

empty () {
    return `ls -A $1|wc -w`
}

# remove auto completion
if [ -d $HOME/.bin ]; then
    for file in $HOME/.bin/*; do
        rm $file 2>/dev/null
    done

    if empty $HOME/.bin ; then
        rmdir $HOME/.bin
    fi
fi

# remove bin path
if [ -d $HOME/.bash_completion.d ]; then
    for file in $HOME/.bash_completion.d/*; do
        rm $file 2>/dev/null
    done

    if empty $HOME/.bash_completion.d; then
        rmdir $HOME/.bash_completion.d
    fi
fi

echo "Uninstalling sucess"
