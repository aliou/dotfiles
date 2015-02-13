#!/usr/bin/env bash

if [[ -n `which hadoop` ]]; then
  export HADOOP_HOME="/usr/local/Cellar/hadoop/2.6.0"
  export HADOOP_CONF_DIR="$HADOOP_HOME/libexec/etc/hadoop"

  export JAVA_HOME=$(/usr/libexec/java_home)

  export HIVE_HOME="/usr/local/Cellar/hive/0.14.0/libexec"
  export HCAT_HOME="/usr/local/Cellar/hive/0.14.0/libexec/hcatalog"
fi
