#!/usr/bin/env bash
# shellcheck disable=2016

# Requirements:
# - fzf <http://git.io/C4FBDw>

export FUZZY_CMD="fzf"

p() {
  if [[ -z $__P_PROJECT_FOLDERS ]]; then
    >&2 echo 'The environment variable `__P_PROJECT_FOLDERS` is not defined.'
    >&2 echo 'Please define it to use `p`.'
    return 1
  fi

  local FOLDERS=$__P_PROJECT_FOLDERS

  local BASE_PATH="/Users/alioudiallo/code/src/"
  local TARGET=

  TARGET=$(
    # shellcheck disable=2086
    find -L $FOLDERS -maxdepth 0 -type d | sort -f | sed "s|$BASE_PATH||g" \
    | fzf -q "$_P_PREFIX"
  )

  if [[ -n $TARGET ]]; then
    cd "$BASE_PATH$TARGET" && folder_info
  fi
}

folder_info() {
  TARGET=$PWD
  PROJECT_NAME=$(basename "$TARGET" | tr '[:upper:]' '[:lower:]')
  if [[ -z $TMUX ]] && (( $(tmux list-sessions 2> /dev/null | rg "$PROJECT_NAME" | wc -l) == 1 )); then
    echo "INFO: This project is running in tmux. Attach it using \`tmux at -t $PROJECT_NAME\`"
  elif [[ -f "${HOME}/.tmuxinator/${PROJECT_NAME}.yml" ]] && [[ -z $TMUX ]]; then
    echo "INFO: This project has a mux config. Run using \`mux $PROJECT_NAME\`"
  fi
}
