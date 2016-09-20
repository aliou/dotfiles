#!/usr/bin/env bash

if [[ -n `which exenv` ]]; then
  export EXENV_ROOT="$HOME/.exenv"
  eval "$(exenv init -)"
fi
