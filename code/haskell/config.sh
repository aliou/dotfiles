#!/usr/bin/env bash

if [[ -n `which ghc` ]]; then
  export CABAL_BIN_PATH="$HOME/.cabal/bin"
  export PATH="$PATH:$CABAL_BIN_PATH"
fi
