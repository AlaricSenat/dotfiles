#!/bin/bash

for DIR in "$@"; do
  if [ -d "${DIR}" ]; then
    cd $DIR && ./install.sh && cd - 1>/dev/null && echo "'${DIR}' content installed."
  else
    echo >&2 "[Err] '${DIR}' doesn't exist."
  fi
done
