#!/bin/bash

ROOT_DIR=`pwd`/`dirname $0`
INSTALL_FAIL=true

# set home_root
for file in $ROOT_DIR/*; do
    [ -d $file ] && sed -i "/HOME_ROOT=/cHOME_ROOT=$ROOT_DIR" $file/*
done

# bash auto completion
for file in $ROOT_DIR/completion/*; do
    ln -s $file $HOME/.bash_completion.d/`basename $file`
done

# add to PATH
for file in $ROOT_DIR/bin/*; do
    ln -s $file $HOME/.bin/`basename $file`    
done

# add rc
for file in $ROOT_DIR/rc/*; do
    ln -s $file $HOME/.bashrc.d/`basename $file`
done

if [ "$INSTALL_FAIL" = true ]; then
    echo "Install success"
else
    echo "Install failed"
fi
