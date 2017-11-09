#!/usr/bin/env bash

if [[ -x /usr/local/bin/go ]]; then
  export GOPATH="$HOME/code"
  export GOBIN="$GOPATH/bin"
  export PATH="$PATH:$GOBIN"
fi
