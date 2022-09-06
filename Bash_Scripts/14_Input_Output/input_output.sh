#!/bin/bash

#Tasks:

#- create a script that does the following:

#asks the user to input a filename
#writes the following poem to the file specified by user:
#An old silent pond...
#A frog jumps into the pond,
#splash! Silence again.

#Autumn moonlight-
#a worm digs silently
#into the chestnut.

#In the twilight rain
#these brilliant-hued hibiscus -
#A lovely sunset.

#outputs the poem to the terminal
#outputs the message "Task finished" to stderr
#- run your script, specify output as the file to write the poem to, redirect stdout to /dev/null, redirect stderr to stderr file


read -r -p "Please, enter a filename: " FILENAME

echo "An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset." | cat > $FILENAME

cat $FILENAME 1> output 2> stderr

