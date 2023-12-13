#!/usr/bin/env bash

export WHALEBREW_INSTALL_PATH="$HOME/code/bin"

# Setup DOCKER_HOST env variables when colima is running.
if [[ -d "$HOME/.colima" ]]; then
  current_context=$(docker context inspect | jq -r .[0].Name)

  if [[ $current_context == "colima" ]]; then
    docker_host=$(docker context inspect | jq -r .[0].Endpoints.docker.Host)
    export DOCKER_HOST=$docker_host
  fi
fi


if [[ -d "$HOME/.orbstack" ]]; then
  # Added by OrbStack: command-line tools and integration
  # shellcheck source=/Users/alioudiallo/.orbstack/shell/init.bash
  source "$HOME/.orbstack/shell/init.bash" 2>/dev/null
fi
