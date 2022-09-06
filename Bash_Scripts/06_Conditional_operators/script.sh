#!/bin/bash
arg1=$1      #string
arg2=$2      #string
arg3=$3      #integer
arg4=$4      #integer
#TEST=123

# checks if 1st and 2nd string arguments are equal and outputs the exit code of this operation
if [[ $1 == $2 ]]
then
  #1st and 2nd string arguments are equal
   echo "Exit code of the last command [[ \$1 = \$2 ]] - $?"
else
  #1st and 2nd string arguments are not equal
   echo "Exit code of the last command [[ \$1 = \$2 ]] - $?"
fi


# checks if 1st string argument is longer than 2nd string argument and outputs the exit code of this operation
# We can use the # operator to get the length of the string in BASH
# we need to enclose the variable name enclosed in “{ }” and inside
# of that, we use the # to get the length of the string variable 
if [[ ${#arg1} -gt ${#arg2} ]]
then
  #1st argument is longer than 2nd
  echo "Exit code of the last command [[ \${#arg1} -gt \${#arg2} ]] - $?"
else
  #1st argument is less or equal 2nd
  echo "Exit code of the last command [[ \${#arg1} -gt \${#arg2} ]] - $?"
fi

  
# checks if variable TEST is present in the environment (has non-zero length) and outputs the exit code of this operation
if [[ -n $TEST ]]
then
  #variable TEST is present in the environment(has non-zero length)
  echo "Exit code of the last command [[ -n \$TEST ]] - $?"
else
 # variable TEST is not present in the environment (has zero length)
 echo "Exit code of the last command [[ -n \$TEST ]] - $?"
fi


# checks if 3rd and 4th integer arguments are not equal and outputs the exit code of this operation
if [[ $3 -ne $4 ]]
then
  #3rd and 4th integer arguments are not equal
  echo "Exit code of the last command [[ \$3 -ne \$4 ]] - $?"
else
  #3rd and 4th integer arguments are equal
  echo "Exit code of the last command [[ \$3 -ne \$4 ]] - $?"
fi


# checks if 3rd integer argument is greater or equal to 4th integer argument and outputs the exit code of this operation
if [[ $3 -ge $4 ]]
then
  #3rd integer argument is greater or equal to 4th
  echo "Exit code of the last command [[ \$3 -ge \$4 ]] - $?"
else
  #3rd integer argument is less then 4th
  echo "Exit code of the last command [[ \$3 -ge \$4 ]] - $?"
fi

