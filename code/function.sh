#!/usr/bin/env bash

gh() {
  FOLDERS=" \
    $HOME/src/github \
    $HOME/src/heroku \
    $HOME/src/sandbox"

  cd $(find $FOLDERS -maxdepth 2 -type d | sort | uniq | selecta) && clear
}
