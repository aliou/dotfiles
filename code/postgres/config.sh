#!/usr/bin/env bash

clean_old_postgres_pid() {
  rm /usr/local/var/postgres/postmaster.pid
}
