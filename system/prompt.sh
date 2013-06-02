#!/bin/bash

####################
#Prompt.

PROMPT_COMMAND='hasjobs=$(jobs -p)'

_PS1host="$bldred\h:"
_PS1folder="$txtwht \w"
_PS1git=" $bldblu\$(parse_git_branch)"
_PS1svn="$bldgrn\$(parse_svn_revision)"
_PS1hg="$bldpur\$(hg_prompt)"
_PS1JOBS="\n$bldred\${hasjobs:+[\j] }"
_PS1end="\e[0m› "

export PS1="$_PS1host$_PS1folder$_PS1git$_PS1svn$_PS1hg$_PS1JOBS$_PS1end"

unset _PS1host _PS1folder _PS1git _PS1svn _PS1JOBS _PS1end
