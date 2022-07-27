#!/bin/bash
set -o errexit

jupyter lab \
  --notebook-dir=/usr/src/app \
  --ServerApp.token='' \
  --ip=0.0.0.0 \
  --port=8888 \
  --no-browser \
  --allow-root
