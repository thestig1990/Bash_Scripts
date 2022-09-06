#!/bin/bash

# Case Statement usage sample
# export PATH="~/:$PATH" ## current session path to where the file is located

ShellScript=$(basename -- "$0")


case $1 in

start)

echo "$ShellScript is started"
sleep 9999
;;

stop)
PID_SCRIPT=$(pgrep $ShellScript)
echo "$ShellScript is stopped by [PID]: $PID_SCRIPT"
for a in $(ps aux | grep "$0" | grep -v grep | awk '{print $2}')
     do
     kill $(pgrep -P "$a")
     done
;;

restart)

$ShellScript stop
$ShellScript start &
;;

*)
echo "$ShellScript usage: start | stop | restart"
;;

esac
