#!/usr/bin/env bash

if [[ -n `which go` ]]; then
  export GOPATH="$HOME/src/.go"
  export GOBIN="$GOPATH/bin"
  export PATH="$PATH:$GOBIN"
fi
