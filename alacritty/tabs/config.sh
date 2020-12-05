#!/usr/bin/env bash

export _TAB_CONFIGURATION="$HOME/.dotfiles/alacritty/tabs/tmux-tabs.conf"

function tab() {
  [[ -n $ALACRITTY ]] && tmux -f "$_TAB_CONFIGURATION" -L alacritty $@
}

function rename-window() {
  tab rename-window "$@"
}

function rename-session() {
  tab rename-session "$@"
}

# Allow creating "regular" tmux sessions.
if [[ -n "$ALACRITTY" ]] && [[ -n "$TMUX" ]]; then
  socket_name=$(echo "$TMUX" | cut -f1 -d',' | cut -d'/' -f5)

  if [[ "$socket_name" = "alacritty" ]]; then
    unset TMUX
  fi
fi
