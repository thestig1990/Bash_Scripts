#!/bin/bash

#Tasks:
# - create a script that does the following:

#outputs the sum of all arguments:
SUM=0
for i in $@
do
  (( SUM+=i ))
done

echo "Sum: $SUM"


#outputs the number of arguments:
echo "Args number: $#"


#outputs the average of all arguments:
#(( AVARAGE=$SUM/$# )) or see next line
AVARAGE=$(( $SUM/$# ))
echo "Avarage result: $AVARAGE"
