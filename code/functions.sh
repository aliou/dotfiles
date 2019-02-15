#!/usr/bin/env bash
# Requirements:
# - pick <http://git.io/pick> or fzf <http://git.io/C4FBDw> or
#   selecta <http://git.io/oGBVlw>
# - ack

# Easily switch fuzzy finder by setting the FUZZY_CMD env variable.
export FUZZY_CMD="fzf"
export SEARCH_CMD="$(which rg)"

# Jump to a project file.
# Usage: p [ project_name ]
# TODO: Ignore common folders.
# TODO: Refactor this whole mess.
p() {
  if [[ -z $__P_PROJECT_FOLDERS ]]; then
    >&2 echo 'The environment variable `__P_PROJECT_FOLDERS` is not defined.'
    >&2 echo 'Please define it to use `p`.'
    return 1
  fi

  local PROJECT=${1:-.*}

  local FOLDERS=$__P_PROJECT_FOLDERS
  local DEPTH=${__P_MAX_DEPTH:-0}

  # Filter the projects using the name passed as argument.
  local PROJECTS=$(
    find -L $FOLDERS -maxdepth $DEPTH -type d | sort -f | \
      uniq | \
      $SEARCH_CMD $PROJECT
  )
  local MATCHES_COUNT=$(echo $PROJECTS | tr ' ' '\n' | wc -l)

  local BASE_PATH="/Users/alioudiallo/code/src/"
  local TARGET=

  # If the filtering returns nothing, let the user choose between every projects.
  if [[ ! $PROJECTS ]]; then
    TARGET=$BASE_PATH$(
      find -L $FOLDERS -maxdepth $DEPTH -type d | sort -f | sed "s|$BASE_PATH||g" | $FUZZY_CMD
    )
    # If there is only one match we're done.
  elif (( $MATCHES_COUNT == 1 )); then
    TARGET=$PROJECTS
    # If there are several matches, let the user choose between the matches.
  elif (( $MATCHES_COUNT > 1 )); then
    TARGET=$BASE_PATH$(
      find -L $PROJECTS -maxdepth $DEPTH -type d | sort -f | sed "s|$BASE_PATH||g" | $FUZZY_CMD
    )
  fi

  if [[ -n $TARGET ]]; then
    cd $TARGET && folder_info
  fi
}

# TODO: fix this.
folder_info() {
  TARGET=$PWD
  PROJECT_NAME=`basename $TARGET | tr '[[:upper:]]' '[[:lower:]]'`
  if [[ -z $TMUX ]] && (( $(tmux list-sessions 2> /dev/null | grep $PROJECT_NAME | wc -l) == 1 )); then
    echo "INFO: This project is running in tmux. Attach it using \`tmux at -t $PROJECT_NAME\`"
  elif [[ -f "${HOME}/.tmuxinator/${PROJECT_NAME}.yml" ]] && [[ -z $TMUX ]]; then
    echo "INFO: This project has a mux config. Run using \`mux $PROJECT_NAME\`"
  fi
}
