#!/usr/bin/env bash

if [[ -n `which exenv` ]]; then
  eval "$(exenv init -)"
  export EXENV_ROOT="$HOME/.exenv"
fi
