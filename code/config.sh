#!/usr/bin/env bash
# shellcheck source=/dev/null

for code_file in ~/.dotfiles/code/**/*.sh
do
  source "$code_file"
done

export PATH="$HOME/code/bin:$PATH"
