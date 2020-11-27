#!/usr/bin/env bash
# shellcheck source=/dev/null

if [[ -n "$ALACRITTY_LOG" ]]; then
  export ALACRITTY=true
fi

for config_file in ~/.dotfiles/alacritty/**/*.sh
do
  source "$config_file"
done
