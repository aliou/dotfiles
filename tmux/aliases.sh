#!/usr/bin/env bash
alias tmux="tmux -2"
alias td="tmux detach"
alias tl="tmux list-session"
alias tk="tmux kill-session"

function ts() {
  COUNT=$(tmux list-sessions | wc -l)
  if (( $COUNT == 1 )); then
    tmux switch-client
  else
    if [[ $1 == "" ]]; then
      SESSION=$(tmux list-sessions -F '#S' | pick)
    else
      SESSION=$@
    fi

    tmux switch-client -t "$SESSION"
  fi
}

function ta() {
  COUNT=$(tmux list-sessions | wc -l)
  if (( $COUNT == 1 )); then
    tmux at
  else
    if [[ $1 == "" ]]; then
      SESSION=$(tmux list-sessions -F '#S' | pick)
    else
      SESSION=$@
    fi

    tmux at -t "$SESSION"
  fi
}
