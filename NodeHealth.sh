#!/bin/bash

#script to monitor node health 

##############################

set -x #debug mode, print command and then output
set -e #stop execution if error is encountered in between
set -o #for inspecting pipe failures

df -h
free -g
nproc

ps -ef | grep "amazon" | awk -F" " '{print $2}' #-F means field seprator , coloumns are separated by " " so give space, then it prints out value of 2nd column for the matching search result



