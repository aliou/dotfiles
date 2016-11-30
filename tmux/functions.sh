#!/usr/bin/env bash

# Open projects with custom tmux configuration.
function t() {
  if [[ -f .tmux ]] && [[ -x .tmux ]]; then
    source .tmux
  else
    (>&2 echo "Missing or not executable '.tmux' file.")
  fi
}
