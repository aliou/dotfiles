#!/usr/bin/env bash

for config_file in ~/.dotfiles/code/**/*.sh
do
  source $config_file
done
