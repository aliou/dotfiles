#!/usr/bin/env bash

set -e
set -o pipefail

if [[ "$1" == "decode" ]]; then
  input=$(cat)
  timestamp=$(base64 -d <<< "$input")
  formatted=$(date -r $(( timestamp / 1000 )))

  output=$(echo -n "$formatted" | base64)

  echo -n "$output"

  exit 0
fi

if [[ "$1" == "encode" ]]; then
echo "Encode not implemented!" 1>&2
exit 1

fi

echo "Missing / unknwon subcommand $1" 1>&2
exit 1
