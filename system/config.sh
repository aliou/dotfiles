#!/usr/bin/env bash

# Make `cd` only autcomplete on folders.
complete -d cd

# Setup prompt command to set the `hasjobs` variable and save the history after
# each command.
PROMPT_COMMAND='history -a; history -n'
