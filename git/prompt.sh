#!/bin/bash
# https://gist.github.com/48207

function parse_git_deleted {
    [[ $(`which git` status 2> /dev/null | grep deleted:) != "" ]] && echo "-"
}
function parse_git_added {
    [[ $(`which git` status 2> /dev/null | grep "Untracked files:") != "" ]] && echo '+'
}
function parse_git_modified {
    [[ $(`which git` status 2> /dev/null | grep modified:) != "" ]] && echo "#"
}
function parse_git_stashed {
    stashed=$(`which git` stash list 2> /dev/null | wc -l | sed 's/ //g')
    [[ $stashed -ne 0 ]] && echo "[$stashed]"
}

function parse_git_wip {
  wip=$(git log --graph --pretty=format:'%s' -1 2> /dev/null | \grep -i wip | wc -l | sed 's/ //g')
  [[ $wip -ne 0 ]] && echo "[WIP]"
}

function parse_git_dirty {
    echo "$(parse_git_added)$(parse_git_modified)$(parse_git_deleted)"
}
function parse_git_branch {
  `which git` branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]$(parse_git_stashed)$(parse_git_wip) /"
}
