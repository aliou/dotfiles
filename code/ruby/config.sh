#!/bin/bash

if [[ -n `which rbenv` ]]; then
  # Only works if rbenv is installed from brew, be careful.
  export RBENV_ROOT="/usr/local/var/rbenv"
  eval "$(rbenv init -)"
fi

if [[ -n `which heroku` ]]; then
  export PATH="/usr/local/heroku/bin:$PATH" #heroku
fi
