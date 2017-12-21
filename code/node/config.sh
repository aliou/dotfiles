#!/usr/bin/env bash
# shellcheck source=/dev/null

# Setup Node Version Manager.
if [[ -s "$HOME/.nvm/nvm.sh" ]]; then
  export NVM_DIR="/Users/alioudiallo/.nvm"
  source "$NVM_DIR/nvm.sh"
fi
