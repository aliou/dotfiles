#!/usr/bin/env bash

alias flushdns="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
