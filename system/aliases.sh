#!/bin/bash

alias rm="rm -iv"
alias mv="mv -iv"

alias ls="ls -lAGh"
alias l1='tree --dirsfirst -ChFLa 1 -I ".git*|tags"'
alias l2='tree --dirsfirst -ChFLa 2 -I ".git*|tags"'
alias l3='tree --dirsfirst -ChFLa 3 -I ".git*|tags"'
alias l4='tree --dirsfirst -ChFLa 4 -I ".git*|tags"'
alias l="l1"

alias c='cd ..'
alias cdd='cd ~/.dotfiles'
alias cds='cd ~/code/src'
alias cdt='cd ~/code/src/tmp'
alias cdg='cd ~/code/src/github.com/aliou/'
alias cdv='cd ~/.dotvim'

# Reloads the shell without having PATH re-adding to himself.
alias update="unset PATH ; exec $SHELL"

alias su="su -"

sudoWisdom=(
"ONE COMMAND TO RULE THEM ALL."
"With great power, comes great responsibility."
"One does not simply become Super User."
"TREAT. YO. SELF."
'Ray, when someone asks if you are a god, you say, "Yes!"'
"HATERS GONNA DO THAT THING THEY ARE EPONYMOUSLY REPUTED TO DO."
)

#For the lulz.
alias sudo="echo ${sudoWisdom[$RANDOM % 6]} ; sudo"

# Herping and Derping
if [ -x $(which ack) ]; then
  alias grep=ack
  alias gerp=grep
fi

alias first='head -n 1'
alias last='tail -n 1'
