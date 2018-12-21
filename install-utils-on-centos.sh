#!/bin/bash
#install utils
yum install -y git tmux iftop net-tools vim bash-completion

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

# config git
cat << EOF > ~/.gitconfig
[push]
        default = simple
[user]
        name = pp
        email = panyouyi@licaimofang.com
[alias]
        lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
EOF


# last things to do mannually
# config git bash completion
echo '------------------------------------------------------';
echo YOU NEED TO RUN 
echo source /etc/bash_completion.d/git 
echo OR 
echo source /usr/share/bash-completion/completions/git 
echo TO MAKE GIT BASH COMPLETION TO TAKE EFFECT
echo '------------------------------------------------------';
