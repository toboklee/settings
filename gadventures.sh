#!/bin/sh
cd ~/dev/gadventures.com/gapadventures
workon gadventures.com
tmux new-session -d 'vim'
tmux split-window -h
tmux -2 attach-session -d 
