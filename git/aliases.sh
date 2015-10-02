#!/bin/bash

# HERP DERP
# alias gt=git
# alias gti=git
# alias qgit=git

# Train my muscle memory to use the `g` alias:
# 1. Alias `g` to the binary instead of the command `git` to avoid recursive
# bullshit.
alias g=`which git`

# 2. Alias `git` to the no-op command so I lose my mind / Muscle memory.
# (99% sure this is a bad idea).
# alias git=:

# 3. Add completion <TAB> completion to `g`.
# Instructions in `/usr/local/etc/bash_completion.d/git-completion.bash`.
__git_complete g _git

# 4. Do the same thing for `gc`, `gco`, `gps`, `gpl` etc.

alias gco='g checkout'
__git_complete gco _git_checkout

alias ga='g add'
__git_complete ga _git_add

alias ga.='g add .'

alias gap='g add -p'
__git_complete gap _git_add

alias gbr='g br'
__git_complete gbr _git_branch

alias gc='g c'
__git_complete gc _git_commit

alias gca='g ca'
__git_complete gca _git_commit

gcm() {
  MESSAGE="$@"
  [[ -n $MESSAGE ]] && gc -m "$MESSAGE" || gc
}

alias gd='g d'
__git_complete gd _git_diff

alias gdc='g dc'
__git_complete gdc _git_diff

alias gdl='g dl'
__git_complete gdl _git_diff

alias gl='g l --decorate'
__git_complete gl _git_log

alias glog='g log --decorate'
__git_complete glog _git_log

alias gm='g merge'
__git_complete gmerge _git_merge

alias gps='g push'
__git_complete gps _git_push

alias gpsf='g push -f'
__git_complete gpsf _git_push

alias gpl='g pull'
__git_complete gpl _git_pull

alias gs='g s'

alias gst='git stash'
__git_complete gpl _git_stash

# Show content of stash at index.
function gsts() {
  if [ -n $1 ]; then
    git stash show -p stash@{$1}
  fi
}

alias gsl='g stash list'
alias gstash='echo "Use gst"'

alias gup=git-up
alias gundo='g undo'
alias gunstash='g unstash'

alias gro='cd "$(\git rev-parse --show-toplevel)"'

alias amend='\git amend'

git-new-remote-tracking() {
  git checkout -b $1 && git push -u origin $1
}
