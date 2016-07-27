#!/bin/bash

if [[ -n `which rbenv` ]]; then
  # Only works if rbenv is installed from brew, be careful.
  export RBENV_ROOT="/usr/local/var/rbenv"
  eval "$(rbenv init -)"
fi
