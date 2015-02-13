#!/usr/bin/env bash

# Install Homebrew, requires Xcode CLI tools.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Change screenshot location.
defaults write com.apple.screencapture location ~/Downloads/ && \
  killall SystemUIServer
