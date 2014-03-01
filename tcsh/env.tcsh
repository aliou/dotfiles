#!/bin/tcsh


setenv PATH "/usr/local/var/rbenv/shims:${PATH}" #rbenv
setenv PATH "${HOME}/.bin:${PATH}" # custom scripts
setenv PATH "${PATH}:/usr/local/share/python" # python/pip
setenv PATH "${PATH}:/usr/local/share/npm/bin" # npm/node
setenv PATH "/usr/local/bin:/usr/local/heroku/bin:${PATH}" #heroku/brew

setenv RBENV_ROOT "/usr/local/var/rbenv"

rbenv init - > /dev/null

setenv EDITOR `which vim`
setenv SHELL /bin/tcsh
