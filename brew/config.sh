#!/usr/bin/env bash

# Update Homebrew twice a week.
export HOMEBREW_AUTO_UPDATE_SECS=302400

# Avoid updating outdated dependents when running `brew upgrade`.
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=true
