#!/usr/bin/env bash

# Work around directory misspellings.
shopt -s cdspell

# Better alias for moving a job to foregound.
stty susp undef
bind '"\C-z":"fg\015"'
