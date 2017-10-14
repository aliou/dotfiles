#!/usr/bin/env bash

if [[ -n $(which aws) ]]; then
  complete -C aws_completer aws
fi
