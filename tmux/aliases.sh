#!/usr/bin/env bash

alias tmux="tmux -2"
alias td="tmux detach"
alias tk="tmux kill-session"
alias tl="tmux list-session"

[[ -z $FUZZY_CMD ]] && export FUZZY_CMD="fzf"

alias ts='tmuxifier load-session'

function ta() {
  COUNT=$(tmux list-sessions 2> /dev/null | \grep '^.*:.*' | wc -l)
  if (( $COUNT > 1 )); then
    SESSION=$(tmux list-sessions -F '#S' | $FUZZY_CMD -1)

    tmux at -t "$SESSION"
  fi
}
