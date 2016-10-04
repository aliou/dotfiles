#!/bin/bash

alias opne=open
alias flushdns="\sudo dscacheutil -flushcache && \sudo killall -HUP mDNSResponder"
alias editdict="$EDITOR ~/Library/Spelling/LocalDictionary"

if [[ -n $(which brew) ]]; then
  alias bs='brew services'
fi

if [[ -d ~/.pow ]]; then
  alias powrestart='touch ~/.pow/restart.txt'
fi
