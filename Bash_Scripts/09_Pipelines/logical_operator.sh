#!/bin/bash

#Tasks:

#- write a one line command using || and && operators that does the following:

#creates a folder named Name_Surname 
#if folder creation was successful, creates a file inside, called my_file
#if file creation was successfull, writes "Hello" into the file
#if previous operation was successful, lists the contents of the file
#if any of the operations fail, print "Something went wrong"


#Result

(mkdir Yevhen_Yakymov && touch Yevhen_Yakymov/my_file && echo "Hello" > Yevhen_Yakymov/my_file && cat Yevhen_Yakymov/my_file) || echo "Something went wrong"



