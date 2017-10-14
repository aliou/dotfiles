#!/usr/bin/env bash
# shellcheck source=/dev/null

for config_file in ~/.dotfiles/code/**/*.sh
do
  source $config_file
done

alias :w='echo "Not in \$EDITOR, dummy"'
alias :e="\$EDITOR"
# alias m='tmuxinator'

# vi stuff.
alias vi="\$EDITOR"
alias vim="\$EDITOR"
alias v="\$EDITOR"
alias nv="\$EDITOR"
alias vs="\$EDITOR -S Session.vim"

alias cdp='cd ~/code/src/github.com/aliou/'

# Change terminal title and open tmuxinator config.
# TODO: Check if the tmuxinator config is present.
# TODO: Either retrain my muscle memory or don't change the title when sending a
# tmuxinator command instead of a project. e.g. `m list` should run
# `tmuxinator list` without changing the terminal name.
function m() {
  if (( $# != 1 )); then
    return 1
  fi
  # Change terminal name on OS X.
  echo -ne "\033]0;" "$*" "\007"

  tmuxinator "$*"
}
