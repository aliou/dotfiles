#!/bin/bash

PROMPT_COMMAND='hasjobs=$(jobs -p)'
export PS1="\[$bldblu\]\${hasjobs:+[\j] }\[$bldred\]\h: \[$txtwht\]\W \[$bldblu\]\$(parse_git_branch)\[\e[0m\]› "
