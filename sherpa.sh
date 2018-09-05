#!/bin/sh
source /usr/local/bin/virtualenvwrapper.sh
cd ~/dev/sherpa.gadventures.com/sherpa
workon sherpa.gadventures.com
tmux \
    new-session -d 'vim' \; \
    split-window -h
tmux -1 attach-session -d
workon sherpa.gadventures.com
