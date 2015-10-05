#!/bin/bash

#Maximum entries.
export HISTSIZE=10000

#Maximum file size.
export HISTFILESIZE=1000000

#Date format.
export HISTTIMEFORMAT='%b %d %I:%M %p '

#Ignore those commands in history.
export HISTIGNORE="history:pwd:exit:df:ls:update:fg:env:aldl:cdd:cdv:h:gh"

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoredups:ignorespace

# Pretty self explanatory.
export EDITOR=`which nvim || which vim`
