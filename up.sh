#!/bin/bash
set -o errexit

docker run --rm --interactive \
  --name="rickshaw" \
  --volume="${HOME}/Notebooks:/usr/src/app" \
  --publish="127.0.0.1:8888:8888" \
  karlbateman/rickshaw