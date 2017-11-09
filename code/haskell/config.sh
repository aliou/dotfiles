#!/usr/bin/env bash

# brew install ghc cabal-install
if [[ -x /usr/bin/local/ghc ]]; then
  export CABAL_BIN_PATH="$HOME/.cabal/bin"
  export PATH="$PATH:$CABAL_BIN_PATH"
fi
