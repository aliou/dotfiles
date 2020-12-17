#!/bin/bash

mkcd()
{
  if (( $# < 1 )); then
    echo >&2 "mkcd: Missing operand"
    return 1
  fi
  mkdir -p "$*" && cd "$*"
}


h ()
{
  if [[ $# -eq 0 ]];
  then
    history | tail
  else
    history | grep -i "$1" | tail
  fi
}

server()
{
  python -m SimpleHTTPServer $1 && open "http://localhost:${1}"
}

extract () {
if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2)   tar xjf "$1"     ;;
      *.tar.gz)    tar xzf "$1"     ;;
      *.bz2)       bunzip2 "$1"     ;;
      *.rar)       unrar e "$1"     ;;
      *.gz)        gunzip "$1"      ;;
      *.tar)       tar xf "$1"      ;;
      *.tbz2)      tar xjf "$1"     ;;
      *.tgz)       tar xzf "$1"     ;;
      *.zip)       unzip "$1"       ;;
      *.Z)         uncompress "$1"  ;;
      *.7z)        7z x "$1"        ;;
      *)     echo "'$1' cannot be extracted via extract()" ;;
       esac
    else
       echo "'$1' is not a valid file"
    fi
}

vim() {
  echo "You're calling vim. Did you mean to call nvim? Sleeping for 5 seconds."
  sleep 5
  /usr/local/bin/vim $@
}
