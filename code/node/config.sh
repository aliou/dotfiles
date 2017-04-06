#!/usr/bin/env bash

# Setup Node Version Manager.
export NVM_DIR="/Users/alioudiallo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

[ -d "$HOME/.yarn/bin" ] && export PATH="$HOME/.yarn/bin:$PATH"
