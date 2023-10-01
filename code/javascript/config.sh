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

# Configure tab completion for pnpm.
# shellcheck disable=2015
[ -f ~/.config/tabtab/bash/__tabtab.bash ] && . "$HOME/.config/tabtab/bash/__tabtab.bash" || true
