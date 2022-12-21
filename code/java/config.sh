#!/usr/bin/env bash

if [[ -d "$(brew --prefix)/opt/openjdk/bin" ]]; then
  export PATH="$(brew --prefix)/opt/openjdk/bin:$PATH"
fi
