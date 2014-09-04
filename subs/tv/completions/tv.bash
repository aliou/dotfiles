_tv() {
  COMPREPLY=()
  local word="${COMP_WORDS[COMP_CWORD]}"

  if [ "$COMP_CWORD" -eq 1 ]; then
    COMPREPLY=( $(compgen -W "$(tv commands)" -- "$word") )
  else
    local command="${COMP_WORDS[1]}"
    local completions="$(tv completions "$command")"
    COMPREPLY=( $(compgen -W "$completions" -- "$word") )
  fi
}

complete -F _tv tv
