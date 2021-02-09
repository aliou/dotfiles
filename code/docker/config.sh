#!/usr/bin/env bash

if [[ -n `which docker-compose` ]]; then
  alias dcp='docker-compose'
  alias dcpl='docker-compose logs -f'
  alias dcpu='docker-compose up'
  alias dcpr='docker-compose run --rm'

  alias dcpul="docker-compose-up-and-logs"
fi

export WHALEBREW_INSTALL_PATH="$HOME/code/bin"
