#!/usr/bin/env bash

if [[ -d "/usr/local/opt/android-sdk" ]]; then
  export ANDROID_HOME="/usr/local/opt/android-sdk"
  export PATH="${PATH}:${ANDROID_HOME}/bin"
  export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
fi
