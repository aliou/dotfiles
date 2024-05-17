#!/usr/bin/env bash

if [[ $(type -p tmuxifier) ]]; then
  # Custom layout directory.
  export TMUXIFIER_LAYOUT_PATH="$HOME/.tmuxifier"

  eval "$(tmuxifier init -)"
fi

if [[ $(type -p direnv) ]]; then
  if [ -n "$TMUX" ] && [ -n "$DIRENV_DIR" ]; then
      unset "${!DIRENV_@}"  # unset env vars starting with DIRENV_
  fi
  # Force loading of direnv.
  eval "$(direnv hook bash)"
fi
