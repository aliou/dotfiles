#!/bin/tcsh

setenv PATH "${HOME}/.dotbin:${PATH}" # custom scripts
setenv PATH "${PATH}:/usr/local/share/python" # python/pip
setenv PATH "${PATH}:/usr/local/share/npm/bin" # npm/node
setenv PATH "/usr/local/bin:/usr/local/heroku/bin:${PATH}" #heroku/brew

setenv EDITOR `which vim`
setenv SHELL /bin/tcsh
