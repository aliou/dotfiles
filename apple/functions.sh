#!/usr/bin/env bash

beep() {
  SOUNDS=(/System/Library/Sounds/*)
  afplay -v 3 ${SOUNDS[ $RANDOM % ${#SOUNDS[@]} ]}
}
