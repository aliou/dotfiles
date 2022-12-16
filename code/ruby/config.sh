#!/usr/bin/env bash

if [[ -n $(command -v rbenv) ]]; then
  export RBENV_ROOT="$HOME/.rbenv"
  eval "$(rbenv init -)"
fi

for cmd in jekyll rails rubocop rspec sidekiq; do
  eval << EOF
    $cmd() {
      local exe = \$(which $cmd)
      if [ -x "./bin/$cmd" ]; then
        ./bin/$cmd \"\$@\"
      elif [ -f "./Gemfile" ]; then
        bundle exec $cmd \"\$@\"
      else
        command $cmd \"\$@\"
      fi
    }
EOF
done
