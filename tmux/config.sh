#!/usr/bin/env bash

if [[ $(type -p tmuxifier) ]]; then
  # Custom layout directory.
  export TMUXIFIER_LAYOUT_PATH="$HOME/.tmuxifier"

  eval "$(tmuxifier init -)"
fi
