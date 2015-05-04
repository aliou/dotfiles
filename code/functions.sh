#!/usr/bin/env bash
# TODO: DRY `j` and `p.`
# Requirements:
# - pick <http://git.io/pick>
# - ack

j() {
  # cd $(find . -maxdepth 5 -type d | grep -v '.git' | pick)
  FOLDER=${1:-.*}

  FOLDERS=$(find . -maxdepth 5 -type d | ack -v '.git' --nocolor $FOLDER)
  MATCHES_COUNT=$(echo $FOLDERS | tr ' ' '\n' | wc -l)

  TARGET=

  if [[ ! $FOLDER ]]; then
    TARGET=$(find . -maxdepth 5 -type d | pick)
  else
    if (( $MATCHES_COUNT == 1 )); then
      TARGET=$FOLDERS
    elif (( $MATCHES_COUNT > 1 )); then
      TARGET=$(find -s $FOLDERS -maxdepth 0 -type d | pick)
    fi
  fi

  if [[ -n $TARGET ]]; then
    cd $TARGET
  fi

}

p() {
  PROJECT=${1:-.*}

  FOLDERS=" \
    $HOME/src/github/**/* \
    $HOME/src/heroku/**/* \
    $HOME/src/.go/src/**/aliou/* \
    $HOME/src/sandbox/*"

  PROJECTS=$(find -s $FOLDERS -maxdepth 0 -type d | ack --nocolor $PROJECT)
  MATCHES_COUNT=$(echo $PROJECTS | tr ' ' '\n' | wc -l)

  TARGET=

  if [[ ! $PROJECTS ]]; then
    TARGET=$(find -s $FOLDERS -maxdepth 0 -type d | pick)
  else
    if (( $MATCHES_COUNT == 1 )); then
      TARGET=$PROJECTS
    elif (( $MATCHES_COUNT > 1 )); then
      TARGET=$(find -s $PROJECTS -maxdepth 0 -type d | pick)
    fi
  fi

  if [[ -n $TARGET ]]; then
    cd $TARGET
  fi

  PROJECT_NAME=`basename $TARGET | tr '[[:upper:]]' '[[:lower:]]'`
  if [[ -z $TMUX ]] && (( $(tmux list-sessions 2> /dev/null | grep $PROJECT_NAME | wc -l) == 1 )); then
    echo "This project is running in Tmux. Attach it using \`tmux at -t $PROJECT_NAME\`"
  elif [[ -f "${HOME}/.tmuxinator/${PROJECT_NAME}.yml" ]] && [[ -z $TMUX ]]; then
    echo "This project has a mux config. Run using \`mux $PROJECT_NAME\`"
  fi
}
