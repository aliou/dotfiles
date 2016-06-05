#!/usr/bin/env bash
# Requirements:
# - pick <http://git.io/pick> or fzf <http://git.io/C4FBDw> or
#   selecta <http://git.io/oGBVlw>
# - ack

# Easily switch fuzzy finder by setting the FUZZY_CMD env variable.
export FUZZY_CMD="fzf --reverse"

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

  PROJECT=${1:-.*}

  FOLDERS=$__P_PROJECT_FOLDERS
  DEPTH=${__P_MAX_DEPTH:-0}

  # Filter the projects using the name passed as argument.
  PROJECTS=$(
    find -L $FOLDERS -maxdepth $DEPTH -type d | sort -f | \
      uniq | \
      sed "s|$BASE_PATH||g" | \
      ack --nocolor $PROJECT
  )
  MATCHES_COUNT=$(echo $PROJECTS | tr ' ' '\n' | wc -l)

  TARGET=

  BASE_PATH="/Users/alioudiallo/code/src/"

  # If the filtering returns nothing, let the user choose between every projects.
  if [[ ! $PROJECTS ]]; then
    TARGET=$(
      find -L $FOLDERS -maxdepth $DEPTH -type d | sort -f | sed "s|$BASE_PATH||g" | $FUZZY_CMD
    )
    # If there is only one match we're done.
  elif (( $MATCHES_COUNT == 1 )); then
    TARGET=$PROJECTS
    # If there are several matches, let the user choose between the matches.
  elif (( $MATCHES_COUNT > 1 )); then
    TARGET=$(
      find -L $PROJECTS -maxdepth $DEPTH -type d | sort -f | sed "s|$BASE_PATH||g" | $FUZZY_CMD
    )
  fi

  if [[ -n $TARGET ]]; then
    cd $BASE_PATH$TARGET && folder_info
  fi
}

# Jump to a subfolder.
# Usage: j [ folder ]
# http://stackoverflow.com/questions/4210042/exclude-directory-from-find-command
j() {
  local __P_PROJECT_FOLDERS="."
  local __P_MAX_DEPTH=5
  local __P_IGNORED_FOLDERS=( '.git' 'node_modules' )
  p $@
}


e() {
  $EDITOR $(
    find . -maxdepth 3 -type f \
    ! -path '*/.git*' ! -path '*/.hg*' ! -path '*/.svn*' | $FUZZY_CMD
  ) && clear
}

folder_info() {
  TARGET=$PWD
  PROJECT_NAME=`basename $TARGET | tr '[[:upper:]]' '[[:lower:]]'`
  if [[ -z $TMUX ]] && (( $(tmux list-sessions 2> /dev/null | grep $PROJECT_NAME | wc -l) == 1 )); then
    echo "INFO: This project is running in tmux. Attach it using \`tmux at -t $PROJECT_NAME\`"
  elif [[ -f "${HOME}/.tmuxinator/${PROJECT_NAME}.yml" ]] && [[ -z $TMUX ]]; then
    echo "INFO: This project has a mux config. Run using \`mux $PROJECT_NAME\`"
  fi
}
