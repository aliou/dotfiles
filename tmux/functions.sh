#!/usr/bin/env bash

# Open projects with custom tmux configuration.
function t() {
  local session_name
  if [[ -f .tmux ]] && [[ -x .tmux ]]; then
    source "$PWD/.tmux"
  else
    session_name="$(basename "$PWD" | sed 's/\.//g')"
    tmux at -t "$session_name" || tmux new -s "$session_name"
    # (>&2 echo "Missing or not executable '.tmux' file.")
  fi
}
