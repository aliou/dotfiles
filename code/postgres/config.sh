#!/usr/bin/env bash

if [[ -n $(which pg) ]]; then
  # Only works if pg is installed from brew, be careful.
  eval "$(pg init -)"
fi
