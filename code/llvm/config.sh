#!/usr/bin/env bash

# Add llvm tools binaries in the path if the folder is present.
llvm_tools_directory="/usr/local/opt/llvm/bin/"
if [[ -d "$llvm_tools_directory" ]]; then
  export PATH="$PATH:$llvm_tools_directory"
fi
