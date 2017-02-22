#!/bin/bash

declare -r BASH=$HOME/.bashrc
declare -r HOME_BIN=$HOME/.bin
declare -r HOME_COMPLETION=$HOME/.bash_completion.d

function install_home_bin {
cat >> $BASH <<EOF 
# $HOME_BIN
export PATH=\$PATH:\$HOME/.bin

EOF
}

function install_home_completion {
cat >> $BASH <<EOF
# $HOME_COMPLETION
for file in $HOME_COMPLETION/*; do
    [ -f \$file ] && source \$file
done

EOF
}

if [ ! -d $HOME_BIN ]; then
    mkdir $HOME_BIN
    install_home_bin
fi

if [ ! -d $HOME_COMPLETION ]; then
    mkdir $HOME_COMPLETION 2> /dev/null
    install_home_completion
fi
