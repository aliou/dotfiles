#!/usr/bin/env bash

# This file forces Alacritty to alway create or attach to a Tmux session.
# To do this, we
# - Create a function to execute tmux commands using the "alacritty" socket
#   name.
# - Attach to an existing session OR create a new session if no session already
#   exist.
# - If we're already in a session, we unset the TMUX env var to allow creating
#   or joining regular sessions.
#
# On top of that, <c-t> is rebinded in Alacritty to create a new session with
# the "alacritty" socket name.
# See TODOs for other improvements.

# Issues:
# - <esc> in vim seems to wait for something?
# - Can't loop on tabs with <c-tab> and <c-s-tab>.

export _ATABS_CONFIGURATION="$HOME/.dotfiles/alacritty/tabs/tmux-tabs.conf"

function atabs() {
  [[ -n $ALACRITTY ]] && tmux -f "$_ATABS_CONFIGURATION" -L alacritty $@
}

if [[ -n "$ALACRITTY" ]] && [[ -z "$TMUX" ]]; then

  # TODO: Each window has its own tmux-alacritty session.
  # Ideally, get the session name from the environment, no idea how tho.
  atabs attach 2> /dev/null || atabs new-session
  exit
fi

# Allow creating "regular" tmux sessions.
if [[ -n "$ALACRITTY" ]] && [[ -n "$TMUX" ]]; then
  session_name=$(echo "$TMUX" | cut -f1 -d',' | cut -d'/' -f5)
  if [[ "$session_name" = "alacritty" ]]; then
    unset TMUX
  fi
fi
