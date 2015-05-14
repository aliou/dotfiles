#!/usr/bin/env bash
#
# Installation: brew install boot2docker docker
# `boot2docker` is a utility running a small linux VM with the docker deamon in
# it, because OS X can't run the deamon. Or something.
#
# If installed from Homebrew, boot2docker is running at launch thanks to a
# launchagent. So the only thing to do is to export the needed environment
# variables.

if [[ -n `which boot2docker` ]]; then
  # eval "$(boot2docker shellinit)"
  export DOCKER_HOST=tcp://192.168.59.103:2376
  export DOCKER_CERT_PATH=/Users/alioudiallo/.boot2docker/certs/boot2docker-vm
  export DOCKER_TLS_VERIFY=1
fi
