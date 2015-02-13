#!/usr/bin/env bash

hadoop_setup() {
  export HADOOP_HOME="/usr/local/Cellar/hadoop/2.6.0"
  export HADOOP_CONF_DIR="$HADOOP_HOME/libexec/etc/hadoop"
}
