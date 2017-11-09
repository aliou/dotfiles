#!/usr/bin/env bash

if [[ -f "/usr/local/bin/aws" ]]; then
  complete -C aws_completer aws
fi
