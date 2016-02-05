#!/usr/bin/env bash

beep() {
  SOUNDS=(/System/Library/Sounds/*)
  afplay -v 3 ${SOUNDS[ $RANDOM % ${#SOUNDS[@]} ]}
}

# Set the title of the current iTerm window / tab.
iterm_title() {
  echo -ne "\033]0;"$*"\007"
}

reveal() {
  if [[ -d "$1" ]];
  then
    basedir="$1"
  else
    basedir=$(dirname "$1")
  fi
  open "$basedir"
}
