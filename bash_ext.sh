#!/bin/bash

# Bash completion
# usage:
# chmod +x bash_ext.sh
# ./bash_ext.sh

echo "if [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
      fi
      export GIT_PS1_SHOWDIRTYSTATE=1
      export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\] $(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '" >> ~/.bashrc

echo "set -g mouse-resize-pane on
      set -g mouse-select-pane on
      set -g mouse-select-window on
      set -g repeat-time 0
      set -g terminal-overrides 'xterm*:smcup@:rmcup@'
      set -g history-limit 1000000

      set -g set-titles on
      set -g set-titles-string '#H -> tmux:#I:#P -> #W'

      setw -g mode-keys vi
      setw -g mode-mouse on
      setw -g utf8 on" >> /etc/tmux.conf
