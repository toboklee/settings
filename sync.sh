#!/bin/bash

THIS_DIR=`pwd`

# basic configs
echo Updating vimrc
ln -sf $THIS_DIR/.vimrc ~/.vimrc

echo Updating tmux conf
ln -sf $THIS_DIR/.tmux.conf ~/.tmux.conf

echo Updating zshrc
ln -sf $THIS_DIR/.zshrc ~/.zshrc

echo Detecting Git changes
if git diff-index --quiet HEAD --; then
    # No changes
    echo No Changes
else
    # Changes
    read -p 'Changes Detected. Push changes to Git?(y/N): ' confirm && [[ $confirm == [y] ]] || (echo Command Aborted; exit 1)

    git add .
    read -r -p 'Commit Message: ' message
    git commit -m '$message'
    git push
fi
