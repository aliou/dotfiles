#!/usr/bin/env bash
# shellcheck source=/dev/null

for config_file in ~/.dotfiles/code/**/*.sh
do
  source $config_file
done

alias v="vim"
alias vs="vim -S Session.vim"
