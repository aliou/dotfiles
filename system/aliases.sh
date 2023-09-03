#!/bin/bash

alias rm="rm -iv"
alias mv="mv -iv"

alias vi="\$EDITOR"
alias im="\$EDITOR"
alias vm="\$EDITOR"
alias vim="\$EDITOR"

if [[ -x /usr/local/bin/exa ]]; then
  alias ls="exa -la"
else
  alias ls="ls -lAGh"
fi

alias l1='echo "use t1"'
alias l2='echo "use t2"'
alias l3='echo "use t3"'

alias t1='tree --dirsfirst -ChFLa 1 -I ".git*|tags"'
alias t2='tree --dirsfirst -ChFLa 2 -I ".git*|tags"'
alias t3='tree --dirsfirst -ChFLa 3 -I ".git*|tags"'

alias cdb='cd ~/code/bin/'
alias cdd='cd ~/.dotfiles'
alias cdg='cd ~/code/src/github.com/aliou/'
alias cds='cd ~/code/src'
alias cdt='cd ~/code/tmp'
alias cdv='cd ~/.vim'

# Reloads the shell without having PATH re-adding to himself.
alias update="unset PATH ; exec \$SHELL"
alias reset="\reset; echo 'terminfo database reset, maybe you meant to use \`update\`?'"
alias .reset='reset'

alias x=xargs

alias first='nth 1'
alias second='nth 2'
# alias last='nth -1'
