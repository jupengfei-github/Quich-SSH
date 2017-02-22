#!/bin/bash

ROOT_DIR=`pwd`

# pre_install
source pre_install.sh

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

echo "Install success"
