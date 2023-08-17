#!/usr/bin/env bash
# shellcheck source=/dev/null

if [[ -d "$(brew --prefix)/opt/asdf" ]]; then
  source "$(brew --prefix)/opt/asdf/libexec/asdf.sh"
fi

for code_file in ~/.dotfiles/code/**/*.sh
do
  source "$code_file"
done

export PATH="$HOME/code/bin:$PATH"
