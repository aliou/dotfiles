#!/usr/bin/env bash

export _TAB_CONFIGURATION="$HOME/.dotfiles/alacritty/tabs/tmux-tabs.conf"

function tab() {
  echo "use alacritty-tabs"
}

function alacritty-tabs() {
  [[ -z $ALACRITTY ]] && return
  SUBCOMMAND=${*:-list-session}
  if [[ $SUBCOMMAND == "new-session" ]]; then
    echo "alacritty-tabs: nah fam"
  fi
  tmux -f "$_TAB_CONFIGURATION" -L alacritty "$SUBCOMMAND"
}

function rename-window() {
  alacritty-tabs rename-window "$@"
}

function rename-session() {
  alacritty-tabs rename-session "$@"
}

# Configure autocompletion by using tmux completion function.
complete -F _tmux alacritty-tabs

# Allow creating "regular" tmux sessions.
if [[ -n "$ALACRITTY" ]] && [[ -n "$TMUX" ]]; then
  socket_name=$(echo "$TMUX" | cut -f1 -d',' | cut -d'/' -f5)

  if [[ "$socket_name" = "alacritty" ]]; then
    unset TMUX
  fi
fi
