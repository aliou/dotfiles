#!/usr/bin/env bash
# shellcheck disable=SC2154

PROMPT_COMMAND='hasjobs=$(jobs -p)'
export PS1="\[$bldblu\]\${hasjobs:+[\j] }\$(impel)\[$txtrst\]"
