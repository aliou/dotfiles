if [[ ! -o interactive ]]; then
    return
fi

compctl -K _tv tv

_tv() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(tv commands)"
  else
    completions="$(tv completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
