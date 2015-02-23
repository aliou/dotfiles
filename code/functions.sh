#!/usr/bin/env bash

gh() {
  echo 'use `p` instead.'
}

p() {
  PROJECT=${1:-.*}

  FOLDERS=" \
    $HOME/src/github/**/* \
    $HOME/src/heroku/**/* \
    $HOME/src/.go/src/github.com/aliou/* \
    $HOME/src/sandbox/*"

  PROJECTS=$(find -s $FOLDERS -maxdepth 0 -type d | ack --nocolor $PROJECT)
  MATCHES_COUNT=$(echo $PROJECTS | tr ' ' '\n' | wc -l)

  TARGET=

  if [[ ! $PROJECTS ]]; then
    TARGET=$(find -s $FOLDERS -maxdepth 0 -type d | selecta)
  else
    if (( $MATCHES_COUNT == 1 )); then
      TARGET=$PROJECTS
    elif (( $MATCHES_COUNT > 1 )); then
      TARGET=$(find -s $PROJECTS -maxdepth 0 -type d | selecta)
    fi
  fi

  cd $TARGET && clear
}
