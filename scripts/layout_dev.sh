#!/bin/bash

# Append layout to workspace
i3-msg "workspace ; append_layout ~/.i3/layouts/dev_lg.json"

# Add applications to containers
(emacs &)
(sleep 10 &)
# (urxvt -e zsh -c "tmux -q has-session && exec tmux attach-session -d || exec tmux new-session -n$USER -s$USER -s$USER@$HOSTNAME" &)
# Deprecated in favor of hyper
# (hyper &)
(urxvt -e zsh -c "tmux -q has-session && exec tmux -2 attach-session -d || exec tmux -2 new-session -n$USER -s$USER -s$USER@$HOSTNAME" &)
(sleep 10 &)
(compton)
