#!/bin/bash

conf_var_prefix=KAFKA_CONF_

for line in $(env | grep ${conf_var_prefix}); do

  IFS=$'\n'
  key=$(cut -d = -f 1 <<< ${line} | sed "s/${conf_var_prefix}//g" | tr '[:upper:]' '[:lower:]' | tr '_' '.')
  value=$(cut -d = -f 2 <<< ${line})

  echo ${key}=${value}

done