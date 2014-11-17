#!/bin/bash

# Edit last migration.
alias emig='vim db/migrate/$(\ls -1 db/migrate/ | tail -n 1)'
alias reload!='echo "Wrong console, dummy."'
