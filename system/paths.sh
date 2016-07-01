#!/bin/bash

if [[ -d "${HOME}/.dotbin" ]]; then
  export PATH="${PATH}:${HOME}/.dotbin"
fi

export INPUTRC="~/.inputrc"
