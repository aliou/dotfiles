#!/bin/bash

alias b=bundle
alias be='bundle exec'
alias br='bundle exec rake'
alias rc='[[ -f ./bin/rails ]] && ./bin/rails c || rails c'
alias rcs='[[ -f ./bin/rails ]] && ./bin/rails c -s || rails c -s'

alias reload='echo "Wrong console, dummy."'
alias reload!='echo "Wrong console, dummy."'

r() {
  if [[ -f './bin/rspec' ]]; then
    ./bin/rspec "$1"
  else
    bundle exec rspec "$1"
  fi
}

alias powrestart='touch ~/.pow/restart.txt'
