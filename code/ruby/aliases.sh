#!/bin/bash

alias be='bundle exec'
alias reload!='echo "Wrong console, dummy."'

# Edit last migration.
alias emig='vim db/migrate/$(\ls -1 db/migrate/ | tail -n 1)'
