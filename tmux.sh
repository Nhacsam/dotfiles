#!/bin/bash
SESSION=$USER

## This is an example of tmux automatisation script


tmux -2 new-session -d -s $SESSION

# Setup the main working window
tmux new-window -t $SESSION:1 -n 'Main'
tmux split-window -h 
tmux select-pane -t 0
tmux send-keys "cd website" C-m
tmux select-pane -t 1
tmux send-keys "cd website/front && gulp watch" C-m
tmux split-window -v
tmux resize-pane -U 10
tmux send-keys "cd provisionning && vagrant up && vagrant ssh" C-m
# Setup an other widow for various stuff
tmux new-window -t $SESSION:2 -n 'Servers' 
tmux split-window -h 
tmux select-pane -t 0
tmux send-keys "cd website" C-m
tmux select-pane -t 1
tmux send-keys "cd website" C-m

tmux select-window -t $SESSION:1

# Attach to session
tmux -2 attach-session -t $SESSION