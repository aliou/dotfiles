#!/bin/bash

alias rm="rm -iv"
alias mv="mv -iv"

alias vi=vim

alias ls="ls -lAGh"

alias l1='tree --dirsfirst -ChFLa 1 -I ".git*|tags"'
alias l2='tree --dirsfirst -ChFLa 2 -I ".git*|tags"'
alias l3='tree --dirsfirst -ChFLa 3 -I ".git*|tags"'

alias cdb='cd ~/.dotbin'
alias cdd='cd ~/.dotfiles'
alias cdg='cd ~/code/src/github.com/aliou/'
alias cds='cd ~/code/src'
alias cdt='cd ~/code/tmp'
alias cdv='cd ~/.dotvim'

# Reloads the shell without having PATH re-adding to himself.
alias update="unset PATH ; exec \$SHELL"
alias reset="\reset; echo 'terminfo database reset, maybe you meant to use; \`update\`?'"

# Herping and Derping
if [ -x "$(which rg)" ]; then
  alias grep=rg
  alias ack=rg
fi
