#!/bin/bash


#Tasks:

#- create a script that does the following:

#accepts any number of arguments
#prints all arguments in the following format "Arg1 value: <arg1 value>", "Arg2 value: <arg2 value>"
#adds the value of the next argument to the previous one and prints it out (for the last argument add the value of the first one)


#creating for loop for printing all arguments in the task format
for (( i=1; i<=$#; i++ )) 
do
  echo "Arg$i value: ${!i}"         # ${!i} - positional arguments value
  if [[ $i -lt $# ]]
  then
    j=$(( $i+1 ))
  fi
 
  arr[i]=$(( ${!i} + ${!j} ))       #creating an array in which each element is sum of the values of the next and previous arguments

done

echo "##########################################################################################################"


#1st option
#array printing without last element and sum of the value of the first and last arg
echo "Array in which each element is sum of the values of the next and previous arguments: [ ${arr[@]:1:$(( $# - 1 ))} $(( $1 + ${!#} )) ]"


#2d option
unset arr[$#]                       # Remove array last element
#array printing and sum of the value of the first and last arg
echo "Array in which each element is sum of the values of the next and previous arguments: [ ${arr[@]} $(( $1 + ${!#} )) ]"




