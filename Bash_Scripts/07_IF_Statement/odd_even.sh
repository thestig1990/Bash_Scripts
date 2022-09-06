#!/bin/bash

var1=$1       #string type

# checking for even or odd the number of characters in the string
# expression ${#var1} means the number of characters in the variable var1
 
if (( ${#var1}%2==0 ))
then
  echo "Even"
else
  echo "Odd"
fi
