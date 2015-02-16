#!/usr/bin/env bash

gh() {
  FOLDERS=" \
    $HOME/src/.go/src/github.com/aliou/* \
    $HOME/src/github/**/* \
    $HOME/src/heroku/**/* \
    $HOME/src/sandbox/*"

  cd $(find $FOLDERS -maxdepth 0 -type d | sort -f | uniq | selecta) && clear
}
