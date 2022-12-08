#!/usr/bin/env bash
# shellcheck disable=1090

# Configure nvm
if [[ -d "$HOME/.nvm" ]]; then
  export NVM_DIR="$HOME/.nvm"

  # Load nvm.
  # 1. When nvm is installed manually:
  [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
  # 2. When nvm is installed through homebrew:
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh"

  # Loading Bash completion.
  # 1. When nvm is installed manually:
  [ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"
  # 2. When nvm is installed through homebrew:
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && source "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
fi
