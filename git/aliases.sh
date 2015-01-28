#!/bin/bash

# HERP DERP
# alias gt=git
# alias gti=git
# alias qgit=git

# Train my muscle memory to use the `g` alias:
# 1. Alias `g` to the binary instead of the command `git` to avoid recursive
# bullshit.
alias g=`which git`

# 2. Alias `git` to the no-op command so I lose my mind.
# (99% sure this is a bad idea).
alias git=:

# 3. Add completion <TAB> completion to `g`.
# Instructions in `/usr/local/etc/bash_completion.d/git-completion.bash`.
__git_complete g _git

# 4. Do the same thing for `gc`, `gco`, `gps`, `gpl` etc.
alias gup=git-up
