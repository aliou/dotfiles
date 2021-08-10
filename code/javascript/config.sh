#!/usr/bin/env bash

# Configure nvm
if [[ -d "$HOME/.nvm" ]]; then
  export NVM_DIR="$HOME/.nvm"

  # Load nvm.
  [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

  # Loading Bash completion.
  [ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
