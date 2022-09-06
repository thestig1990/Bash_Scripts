#!/bin/bash


# Tasks:

# - create a script that does the following:
#has a function that multiplies the argument passed to it by itself and outputs to the console
#has 2d function that passes each argument passed to the script to the 1st function and increases the result by 1 and outputs to the console
# - run your function with the following arguments: 5 6 1 3 9


# definition of a function that multiplies an element by itself
mult() {
  for ((i=1 ; i<=$# ; i++)) 
  do

    echo "$(( ${!i}*${!i} ))"

  done
}

echo "Arguments passed to the function and multiplied by themselves:"
mult $@          # calling a function and passing arguments to it

echo "####################################################################################"

# definition of a function that passes each argument passed to the script
# to the 1st function and increases the result by 1 and outputs to the console
add() {
  for j in $@
  do

    echo "$(( $(mult $j) + 1 ))"

  done
}

echo "Arguments passed to the script to the mult() function and increases the result by 1:"
add mult $@    # calling a function's and passing arguments to it

