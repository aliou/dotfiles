#!/usr/bin/env bash

function has_session() {
  [[ -f "$PWD/Session.vim" ]] && echo '[$] '
}

PROMPT_COMMAND='hasjobs=$(jobs -p)'
export PS1="\[$bldblu\]\${hasjobs:+[\j] }\[$bldred\]\h: \[$txtrst\]\W \[$bldblu\]\$(parse_git_branch)\[\e[0m\]\$(has_session)› "

# vim: tw=0
