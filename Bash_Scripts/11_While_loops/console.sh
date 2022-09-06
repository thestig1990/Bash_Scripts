#!/bin/bash

# Tasks:

#- create console.sh script that does the following:

#implements console functionality - infinite loop that reads user input on each iteration
#supports commands:
#ls [dir] - lists the contents of specified directory
#pwd - shows the path to current directory
#hi - outputs "Hello <name of the current user>" 
#exit - ends the script
#- run your script and test implemented commands


# Infinite while loop
while true
do
   read -r -p "Please, enter your command: " command   #reading the command from input
   
   # using case command to determine the command from input
   case $command in

       ls* ) ls ${command#* }
         ;;
       pwd ) 
         echo "$(pwd)"
         ;;
       hi ) 
         echo "Hello $USERNAME"
          ;;
       exit ) 
         exit
         ;;
       *)
         echo "Supported commands [ls | pwd | hi | exit]" 
         ;;
   esac
done 

