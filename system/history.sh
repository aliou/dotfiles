#!/usr/bin/env bash

# Disable the entry limit for the history file.
export HISTSIZE=-1

# Disable file size limit for the history file.
export HISTFILESIZE=-1

# History date format.
export HISTTIMEFORMAT='%b %d %I:%M %p '

# Ignore those commands in history.
export HISTIGNORE='history:pwd:exit:df:ls:update:fg:env:cdd:cdv:h:gh:gs:hs'

# `ignoreboth`: Ignore duplicates and commands starting by space.
# `erasedups`: Remove from identical commands from history before saving the
# current command.
# See bash(1) for more options.
export HISTCONTROL='ignoreboth:erasedups'

# Append to history, don't overwrite.
shopt -s histappend

# Display the command before running it.
shopt -s histverify
