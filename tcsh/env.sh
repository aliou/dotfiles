#!/bin/tcsh

setenv PATH "${HOME}/.rbenv/bin:${PATH}" # rbenv
setenv PATH "${HOME}/.rbenv/shims:${PATH}" # rbenv
setenv PATH "${HOME}/.bin:${PATH}" # rbenv
setenv PATH "${PATH}:/usr/local/share/python" # python/pip
setenv PATH "${PATH}:/usr/local/share/npm/bin" # npm/node
setenv PATH "/usr/local/bin:/usr/local/heroku/bin:${PATH}" #heroku/brew

setenv EDITOR `which vim`
