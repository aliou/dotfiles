#!/usr/bin/env bash

alias tmux="tmux -2"
alias td="tmux detach"
alias tk="tmux kill-session"
alias tl="tmux list-session"

[[ -z $FUZZY_CMD ]] && export FUZZY_CMD="fzf"

function ta() {
  COUNT=$(tmux list-sessions 2> /dev/null | \grep -c '^.*:.*')
  if (( COUNT >= 1 )); then
    SESSION=$(tmux list-sessions -F '#S' | $FUZZY_CMD -1 -0)

    tmux at -t "$SESSION"
  fi
}
