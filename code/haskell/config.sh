#!/usr/bin/env bash

# brew install ghc cabal-install
if [[ -n `which ghc` ]]; then
  export CABAL_BIN_PATH="$HOME/.cabal/bin"
  export PATH="$PATH:$CABAL_BIN_PATH"
fi
