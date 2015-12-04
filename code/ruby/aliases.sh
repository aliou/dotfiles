#!/bin/bash

alias b=bundle
alias be='bundle exec'
alias br='bundle exec rake'
alias rc='[[ -f ./bin/rails ]] && ./bin/rails c || rails c'
alias rcs='[[ -f ./bin/rails ]] && ./bin/rails c -s || rails c -s'

if [[ -n `which heroku` ]]; then
  alias hk='heroku'
fi

alias reload='echo "Wrong console, dummy."'
alias reload!='echo "Wrong console, dummy."'

r() {
  if [[ -f './bin/rspec' ]]; then
    ./bin/rspec $1
  else
    bundle exec rspec $1
  fi
}

# Edit last migration.
alias emig='$EDITOR db/migrate/$(\ls -1 db/migrate/ | tail -n 1)'

migrate() {
  if [[ -f './bin/rake' ]]; then
    ./bin/rake db:migrate
  else
    bundle exec rake db:migrate
  fi
}

rollback() {
  if [[ -f './bin/rake' ]]; then
    ./bin/rake db:rollback
  else
    bundle exec rake db:rollback
  fi
}

alias powrestart='touch ~/.pow/restart.txt'
