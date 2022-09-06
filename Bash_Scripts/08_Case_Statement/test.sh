#!/bin/bash

# Case Statement usage sample
# export PATH="~/:$PATH" ## current session path to where the file is located

ShellScript=$(basename -- "$0")
ShellScriptNew=$0
echo "$ShellScript"
echo "$ShellScriptNew"

#case $1 in
#start)
#echo "$ShellScript Started"
#sleep 9999
#;;
#stop)
#echo "$ShellScript Stopped by [PID]: $!"
#kill $!
#killall sleep
#;;
#restart)
#$ShellScript stop
#$ShellScript start &
#;;
#*)
#echo "$ShellScript usage: start | stop | restart"
#;;
#esac
