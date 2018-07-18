#!/bin/bash

THIS_DIR=`pwd`

# basic configs
ln -sf $THIS_DIR/.vimrc ~/.vimrc
ln -sf $THIS_DIR/.tmux.conf ~/.tmux.conf
ln -sf $THIS_DIR/.zshrc ~/.zshrc

git add .
git commit -m "Setting change"
git push
