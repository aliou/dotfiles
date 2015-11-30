#!/usr/bin/env bash

# Setup Node Version Manager.
if [[ -n `which nvm` ]]; then
  export NVM_DIR="/Users/alioudiallo/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
fi
