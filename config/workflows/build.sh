#!/bin/bash

FILE_NAME=$(basename "$0")
STAGE="${FILE_NAME%.*}"

ansible-playbook config/ansible/playbook.yaml -vv \
      -e version=${BUILD_ID} \
      -e workspace=${WORKSPACE}
