#!/usr/bin/env bash

for config_file in ~/.dotfiles/code/**/*.sh
do
  source $config_file
done

alias :w='echo "Not in vim, dummy"'
alias :e='\vim'
