#!/bin/bash

if [[ -n `which rbenv` ]]; then
  export RBENV_ROOT="/usr/local/var/rbenv"
  eval "$(rbenv init -)"
fi

if [[ -n `which heroku` ]]; then
  export PATH="/usr/local/heroku/bin:$PATH" #heroku
fi
