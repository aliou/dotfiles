#!/usr/bin/env bash

sdk_path="$HOME/Developer/PlaydateSDK"

if [[ -d $sdk_path ]]; then
  export PLAYDATE_SDK_PATH=$sdk_path
fi
