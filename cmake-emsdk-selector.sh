#!/bin/sh

if [ -z "$EMSDK" ]; then
  echo Run this with an active emscripten SDK!
  exit 1
fi

if [ "$1" = "--build" ]; then
  emmake cmake "$@"
else
  emconfigure cmake "$@"
fi
