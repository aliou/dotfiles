#!/usr/bin/env bash

if [[ -n $(which pgenv) ]]; then
  export PGENV_ROOT="$HOME/.pgenv"
  eval "$(pgenv init -)"
fi

clean_old_postgres_pid() {
  rm /usr/local/var/postgres/postmaster.pid
}
