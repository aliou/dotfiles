#!/bin/bash

# Train my muscle memory to use the `g` alias:
# 1. Alias `g` to the binary instead of the command `git` to avoid recursive
# bullshit.
alias g="git"
alias gti="git"

# 2. Alias `git` to the no-op command so I lose my mind / Muscle memory.
# (99% sure this is a bad idea).
# alias git=:

# 3. Add completion <TAB> completion to `g`.
# Instructions in `/usr/local/etc/bash_completion.d/git-completion.bash`.
__git_complete g _git
__git_complete gti _git

# 4. Do the same thing for `gc`, `gco`, `gps`, `gpl` etc.

alias gco='g checkout'
alias goc='g checkout'
__git_complete gco _git_checkout
__git_complete goc _git_checkout

alias ga='g add'
__git_complete ga _git_add

alias ga.='g add .'

alias gap='g add -p'
alias agp=gap
alias gpa=gap
__git_complete gap _git_add

alias gita='git add --intent-to-add'
__git_complete gita _git_add

alias gbr='g br'
__git_complete gbr _git_branch

alias gc='g c'
__git_complete gc _git_commit

alias gca='g ca'
__git_complete gca _git_commit

gcm() {
  MESSAGE="$*"
  if [[ -n "$MESSAGE" ]]
  then
    gc -m "$MESSAGE"
  else
    gc
  fi
}

alias gmc='gcm'
__git_complete gcm _git_commit

alias gd='g d'
__git_complete gd _git_diff

alias gdc='g dc'
__git_complete gdc _git_diff

alias gdl='g dl'
__git_complete gdl _git_diff

alias gl='g l'
__git_complete gl _git_log

alias gps='g push'
__git_complete gps _git_push

alias gpsf='g push -f'
__git_complete gpsf _git_push

alias gpl='g pull'
__git_complete gpl _git_pull

alias gri='git rebase -i'
__git_complete gri _git_rebase

alias gs='g s'

alias gsl='g stash list'
alias gss='g stash show -p'

alias gundo='g undo'
alias gunstash='g unstash'

alias gro='cd "$(\git rev-parse --show-toplevel)"'

# Clone from gihub in the right directory.
# TODO: Extract project path.
function hc() {
  if [[ -z $__PROJECT_FOLDER ]]; then
    >&2 echo 'The environment variable __PROJECT_FOLDERS is not defined.'
    >&2 echo 'Please define it to use hc.'
    return 1
  fi

  if [[ -z "$1" ]]; then
    >&2 echo 'Please pass a repo as an argument. Ex. aliou/www'
    return 1
  fi

  if [ -x "$(which hub)" ]; then
    FOLDER="$__PROJECT_FOLDER/github.com/$1"
    if [ -d "$FOLDER" ]; then
      echo "Folder already exists. Pulling."
      cd "$FOLDER" && git pull
    else
      hub clone "$1" "$FOLDER" && cd "$FOLDER" || return
    fi
  else
    echo "\`hub\` is not installed. Install it by running \`brew install hub\`."
  fi
}

# TODO: Extract this whole function, this is basically `p`.
function git-fuzzy-checkout() {
  TARGET=
  BRANCH=${1:-.*}
  BRANCHES=$(
      git branch -a | sed "s:.* remotes/origin/::" | sed "s:.* ::" \
        | sort | uniq \
        | \ack --nocolor "$BRANCH"
    )

  BRANCH_COUNT=$(echo "$BRANCHES" | tr ' ' '\n' | wc -l)

  if [[ ! $BRANCHES ]]; then
    TARGET=$(
      git branch -a | sed "s:.* remotes/origin/::" | sed "s:.* ::" \
        | sort | uniq \
        | $FUZZY_CMD -q "$BRANCH"
    )
  elif (( BRANCH_COUNT == 1 )); then
    TARGET=$BRANCHES
  elif (( BRANCH_COUNT > 1 )); then
    TARGET=$(
      echo "$BRANCHES" | tr ' ' '\n' \
        | $FUZZY_CMD
    )
  fi

  if [[ -n $TARGET ]]; then
    git checkout "$TARGET"
  else
    echo "Could not find branch."
  fi
}

alias gfco="git-fuzzy-checkout"
__git_complete gfco _git_checkout

alias gcof="git-fuzzy-checkout"
__git_complete gcof _git_checkout
