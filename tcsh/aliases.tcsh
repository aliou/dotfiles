#!/bin/tcsh

alias cdd 'cd ~/.dotfiles'
alias cds 'cd ~/code/src'
alias cdt 'cd ~/code/src/tmp'
alias cdv 'cd ~/.dotvim'

alias ls 'ls -lAG'
alias l "l1"
alias l1 'tree --dirsfirst -ChFLa 1 -I ".git*|tags"'
alias l2 'tree --dirsfirst -ChFLa 2 -I ".git*|tags"'
alias l3 'tree --dirsfirst -ChFLa 3 -I ".git*|tags"'
alias l4 'tree --dirsfirst -ChFLa 4 -I ".git*|tags"'

alias mv "mv -iv"
alias rm "rm -iv"

alias su "su -"

alias ta "tmux at"
alias td "tmux detach"
alias tk "tmux kill-session"
alias tl "tmux list-session"
alias tmux "tmux -2"
alias ts "tmux switch-client -t"
