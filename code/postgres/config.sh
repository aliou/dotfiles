#!/usr/bin/env bash

if [[ -n $(which pgenv) ]]; then
  export PGENV_ROOT="$HOME/.pgenv"
  eval "$(pgenv init -)"
fi

