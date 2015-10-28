#!/usr/bin/env bash

for config_file in ~/.dotfiles/code/**/*.sh
do
  source $config_file
done

alias :w='echo "Not in \$EDITOR, dummy"'
alias :e="$EDITOR"
alias m='tmuxinator'

# vi stuff.
alias v=$EDITOR
alias nv=$EDITOR
alias vs="$EDITOR -S Session.vim"

# Muscle memory training.
alias vi=:
alias vim=:
