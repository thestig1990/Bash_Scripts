#!/bin/bash

echo "You now run script $0"                # '$0' - Name of a script being executed
echo "All arguments: "$*""                  # "$*" - All arguments in command line in a form of a single string variable
echo "There are $# arguments"               # "$#" - Number of arguments passed in a command line
echo "Second arg. - $2; Fourth arg. - $4"
[[ $1 -eq $2 ]]
echo "Last command exit code - $?"          # '$?' - Exit code of the last command         

