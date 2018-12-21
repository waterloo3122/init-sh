#!/bin/bash
#install utils
yum install -y git tmux iftop net-tools vim

# config tmux
cat << EOF >  ~/.tmux.conf
set -s escape-time 0

# Remap window navigation to vim
unbind-key j
bind-key j select-pane -D
unbind-key k
bind-key k select-pane -U
unbind-key h
bind-key h select-pane -L
unbind-key l

# Resize panes
bind-key l select-pane -R
bind -n M-k resize-pane -U 5
bind -n M-j resize-pane -D 5
bind -n M-h resize-pane -L 5
bind -n M-l resize-pane -R 5
EOF
