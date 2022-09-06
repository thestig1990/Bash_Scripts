#!/bin/bash

echo "You now run script $0"                          # '$0' - Name of a script being executed
echo "First two arguments are $1 and $2"              # '$n' - N-th (positional) argument passed in a command line
echo "There are $# arguments"                         # '$#' - Number of arguments passed in a command line
echo "one" "two" "three"
echo "Last argument in previous command is \"$_\""    # '$_' - Last argument of the previous command
echo "Current shell PID: $$"                          # '$$' - Process number of the shell or current command
ps -ef | grep $$
echo "Here's how \$\? works"
cat nonexisten_file
echo "Previous command exit code: $?"                 # '$?' - Exit code of the last command
