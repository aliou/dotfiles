#!/usr/bin/env bash

if [[ -n `which heroku` ]]; then
  export PATH="/usr/local/heroku/bin:$PATH" #heroku
fi
