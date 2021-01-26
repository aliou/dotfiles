#!/usr/bin/env bash

# Configure nvm
if [[ -d "HOME/.nvm" ]]; then
  export NVM_DIR="$HOME/.nvm"
  # This loads nvm
  source "/usr/local/opt/nvm/nvm.sh"


  # This load the nvm bash completion.
  source "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
fi
