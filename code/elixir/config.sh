#!/usr/bin/env bash

# Generate completions for exenv command.
# TODO: Try to have this installed with the brew formula.
_exenv() {
  COMPREPLY=()
  local word="${COMP_WORDS[COMP_CWORD]}"

  if [ "$COMP_CWORD" -eq 1 ]; then
    COMPREPLY=( $(compgen -W "$(exenv commands)" -- "$word") )
  fi
  # TODO: Create `exenv-completions` that gives completions for the other
  # commands.
  # else
  #   local command="${COMP_WORDS[1]}"
  #   local completions="$(exenv completions "$command")"
  #   COMPREPLY=( $(compgen -W "$completions" -- "$word") )
  # fi
}

if [[ $(type -p exenv) ]]; then
  export EXENV_ROOT="$HOME/.exenv"
  eval "$(exenv init -)"

  complete -F _exenv exenv
fi

# Enable history.
export ERL_AFLAGS="-kernel shell_history enabled"
