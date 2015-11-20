#!/usr/bin/env bash

if [[ -n `which docker-compose` ]]; then
  alias dcp='docker-compose'
  alias dcpl='docker-compose logs'
  alias dcpu='docker-compose up'
  alias dcpr='docker-compose restart'
fi

if [[ -n `which docker-machine` ]]; then
  alias dcm='docker-machine'
fi
