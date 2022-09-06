#!/bin/bash

if [[ $# -lt 2 ]]
then
  echo "one argument given - $1"
elif [[ $# -gt 2 ]] && [[ $# -lt 4 ]]
then
  echo "the last argument given - $3"
else
  echo "Invalid number of arguments"
fi

