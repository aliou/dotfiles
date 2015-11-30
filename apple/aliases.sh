#!/bin/bash

alias launchpadrestart="defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock"
alias powrestart='touch ~/.pow/restart.txt'
alias opne=open
alias flushdns="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
