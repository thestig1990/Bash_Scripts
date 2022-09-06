#!/bin/bash

# - TASK:
#write a command that outputs only users that have /bin/false shell from /etc/passwd file and changes the shell to /bin/bash


# - RESULT

#copy /etc/passwd file to dir '/home/yevhen_yakymov/EPAM/DevOps/4_BashScripts/homework/09_Pipelines'
cp /etc/passwd /home/yevhen_yakymov/EPAM/DevOps/4_BashScripts/homework/09_Pipelines/passwd_new

#output of 'passwd_new' file contents
cat passwd_new


for i in {1..3}
do
  echo "---------------------------------------------------------------------------------------------"
done


#outputs only users that have /bin/false shell
RESULT=$(grep "/bin/false" passwd_new)
echo "$RESULT"


#changes the shell to /bin/bash with 'sed' command

SEARCH="false"
REPLACE="bash"
sed -i "s/$SEARCH/$REPLACE/" passwd_new

echo "Exit code - $?"


for i in {1..3}
do
  echo "---------------------------------------------------------------------------------------------"
done


#output of 'passwd_new' file contents
cat passwd_new



