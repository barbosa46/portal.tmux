#!/bin/bash

HOST=$(awk '/^Host / {print $2}' ~/.ssh/config | fzf --no-preview --reverse) 

if [[ -n "$HOST" ]]; then
    tmux new-window -n "$HOST" -t ssh:
    tmux select-window -t ssh:"$HOST"
    tmux send-keys -t ssh:"$HOST" "ssh $HOST" C-m
    tmux switch-client -t ssh:"$HOST"
fi
