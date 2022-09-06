#!/bin/bash

if [[ $1 == $2 ]]
then
  echo "1st and 2nd string arguments are equal"
  echo "Exit code of the last command - $?"
else
  echo "1st and 2nd string arguments are not equal"
  echo "Exit code of the last command - $?"
fi


