#!/bin/bash

alias rm="rm -iv"
alias mv="mv -iv"

if [ `uname` = "Linux" ]; then
  alias ls="ls -lA --color"
else
  alias ls="ls -lAG"
fi
alias l1='tree --dirsfirst -ChFLa 1 -I ".git*|tags"'
alias l2='tree --dirsfirst -ChFLa 2 -I ".git*|tags"'
alias l3='tree --dirsfirst -ChFLa 3 -I ".git*|tags"'
alias l4='tree --dirsfirst -ChFLa 4 -I ".git*|tags"'
alias l="l1"

alias ack="ack -i"

alias cdd='cd ~/.dotfiles'
alias cds='cd ~/src'
alias cdt='cd ~/tmp'
alias cdv='cd ~/.dotvim'

# Reloads the shell without having PATH re-adding to himself.
alias update="unset PATH ; exec $SHELL"

alias su="su -"

sudoWisdom=(
"ONE COMMAND TO RULE THEM ALL."
"With great power, comes great responsibility." 
"One does not simply become Super User."
"TREAT. YO. SELF."
'If someone asks if you are a god, you say, "yes!"'
"HATERS GONNA DO THAT THING THEY ARE EPONYMOUSLY REPUTED TO DO."
)

#For the lulz.
alias sudo="echo ${sudoWisdom[$RANDOM % 6]} ; sudo"
