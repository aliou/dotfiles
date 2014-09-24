#!/bin/bash

mkcd()
{
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
  open "http://localhost:${1}" && python -m SimpleHTTPServer $1
}

fp () { #find and list processes matching a case-insensitive partial-match string
  ps -Ao pid,comm|awk '{match($0,/[^\/]+$/); print substr($0,RSTART,RLENGTH)": "$1}'|grep -i $1|grep -v grep
}

fk () { # build menu to kill process
  IFS=$'\n'
  PS3='Kill which process? '
  select OPT in $(fp $1) "Cancel"; do
    if [ $OPT != "Cancel" ]; then
      kill -9 $(echo $OPT|awk '{print $NF}')
    fi
    break
  done
  unset IFS
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
