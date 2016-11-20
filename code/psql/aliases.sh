#!/usr/bin/env bash

if [[ -n `which pgcli` ]]; then
  alias psql='pgcli'
fi

# When running postgres in Docker.
# Overriden in some projects local configuration.
alias dpsql='psql -h localhost'
