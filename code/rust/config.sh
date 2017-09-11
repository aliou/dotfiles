#!/usr/bin/env bash

# Load rust and other binaries.
if [[ -d "$HOME/.cargo" ]]; then
  export PATH="$HOME/.cargo/bin:$PATH"

  # Set the src path for Racer (Rust Code Completion utility) and rls (Rust
  # Language Server).
  # This requires to have the rust source installed.
  #   => rustup component add rust-src
  export RUST_SRC_PATH
  RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
fi
