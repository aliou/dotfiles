#!/usr/bin/env bash

# Load rust and other binaries.
if [[ -d "$HOME/.cargo" ]]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi
