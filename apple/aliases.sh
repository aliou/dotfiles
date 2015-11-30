#!/bin/bash

alias launchpadrestart="defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock"
alias powrestart='touch ~/.pow/restart.txt'
alias opne=open
alias flushdns="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder"

# Set the title of the current iTerm window / tab.
function iterm_title() {
  echo -ne "\033]0;"$*"\007"
}
