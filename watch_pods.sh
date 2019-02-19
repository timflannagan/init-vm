#! /usr/bin/env bash

if [[ -n "$1" ]]; then
  COMMAND="kubectl get pods --selector=$1"
else
  COMMAND="kubectl get pods"
fi

eval "watch -n1 $COMMAND"
