#!/bin/bash

#Tasks:

#- create a script that does the following:

#reads a filename from user input
#combines specifyed file with itself until it reaches a size greater than 1024 KB
# - create a file using head -c 4KB /dev/urandom > file.txt command
# - execute your script passing the file you've just created


# reading the file name from console and redirect output to the variable 'FILE'
read -r -p "Please, enter filename: " FILE

# creating a file with 'head -c 4KB /dev/urandom > file.txt' command
head -c 4KB /dev/urandom > $FILE


echo "You create file - $FILE"
echo "Filesize: $( ls -lah $FILE | awk '{ print $5}' )"     # use 'ls' and 'awk' command to get the file size:

echo "#####################################################"


SIZE=$( stat -c %s $FILE )         #use 'stat' command to get the file size


#create loop that combines specifyed file with itself until it reaches a size greater than 1024 KB
until [[ $(( $SIZE/1000 )) -gt 1020 ]]
do
  SIZE=$( stat -c %s $FILE )                 #use 'stat' command to get the file size in bytes
  SIZEKB=$(( $SIZE/1000 ))                   #converting file size to Kbytes
  head -c ${SIZEKB}KB $FILE >> $FILE
  echo "Filesize: ${SIZEKB}Kb"
done

SIZE=$( stat -c %s $FILE )
SIZEKB=$(( $SIZE/1000 )) 
echo "Filesize: ${SIZEKB}Kb"
