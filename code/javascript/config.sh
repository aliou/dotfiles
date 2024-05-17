#!/usr/bin/env bash
# shellcheck disable=1091

# Configure nvm
if [[ -d "$HOME/.nvm" ]]; then
  export NVM_DIR="$HOME/.nvm"

  # Load nvm.
  [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

  # Loading Bash completion.
  [ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"
fi

# Configure pnpm
if [[ -d "$HOME/Library/pnpm" ]]; then
  export PNPM_HOME="/Users/alioudiallo/Library/pnpm"

  case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
  esac

  # Loading Bash completion.
  [ -s "$PNPM_HOME/bash_completion" ] && source "$PNPM_HOME/bash_completion"
fi
