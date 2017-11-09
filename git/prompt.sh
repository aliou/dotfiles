#!/bin/bash
# https://gist.github.com/48207

function parse_git_branch {
  {
    echo '['
    git branch --format="%(refname:short)" 2> /dev/null
    git status --porcelain 2> /dev/null | cut -b 2 | sort | uniq | tr '?MD' '+#-'
    echo ']'
  } | xargs | sed 's/ //g'
}
