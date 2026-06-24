#!/bin/bash

FILE_NAME=$(basename "$0")
STAGE="${FILE_NAME%.*}"

ansible-playbook config/ansible/playbook.yml -vv \
      -t build \
      -e version=${BUILD_ID} \
      -e workspace=${WORKSPACE}
