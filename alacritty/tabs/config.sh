#!/usr/bin/env bash

export _ATABS_CONFIGURATION="$HOME/.dotfiles/alacritty/tabs/tmux-tabs.conf"

function atabs() {
  [[ -n $ALACRITTY ]] && tmux -f "$_ATABS_CONFIGURATION" -L alacritty $@
}

# Allow creating "regular" tmux sessions.
if [[ -n "$ALACRITTY" ]] && [[ -n "$TMUX" ]]; then
  socket_name=$(echo "$TMUX" | cut -f1 -d',' | cut -d'/' -f5)
  if [[ "$socket_name" = "alacritty" ]]; then
    unset TMUX
  fi
fi
