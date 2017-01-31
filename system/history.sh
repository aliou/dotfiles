#!/usr/bin/env bash

# Disable the entry limit for the history file.
export HISTSIZE=

# Disable file size limit for the history file.
export HISTFILESIZE=

# History date format.
export HISTTIMEFORMAT='%b %d %I:%M %p '

# Ignore those commands in history.
export HISTIGNORE='history:pwd:exit:df:ls:update:fg:env:cdd:cdv:h:gh:gs:hs'

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoredups:ignorespace
