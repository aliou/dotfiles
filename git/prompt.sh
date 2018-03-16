#!/bin/bash
# https://gist.github.com/48207

function parse_git_deleted {
    [[ $(git status 2> /dev/null | grep deleted:) != "" ]] && echo "-"
}

function parse_git_added {
    [[ $(git status 2> /dev/null | grep "Untracked files:") != "" ]] && echo '+'
}

function parse_git_modified {
    [[ $(git status 2> /dev/null | grep modified:) != "" ]] && echo "#"
}

function parse_git_stashed {
    stashed=$(git stash list 2> /dev/null | wc -l | sed 's/ //g')
    [[ $stashed -ne 0 ]] && echo "[$stashed]"
}

function parse_git_wip {
  wip=$(git log --pretty=format:'%s' -1 2> /dev/null | \grep -ic wip)
  [[ $wip -ne 0 ]] && echo "[WIP]"
}

function parse_git_dirty {
    echo "$(parse_git_added)$(parse_git_modified)$(parse_git_deleted)"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]$(parse_git_stashed)$(parse_git_wip) /"
}
