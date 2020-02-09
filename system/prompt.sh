#!/usr/bin/env bash
# shellcheck disable=SC2154

prompt_cmd() {
  local hasjobs=$(jobs -p)
  PS1="\[$bldblu\]\${hasjobs:+[\j] }\[\$(impel)\]\[$txtrst\]\n› "
}

PROMPT_COMMAND=prompt_cmd
