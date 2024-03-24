#!/usr/bin/env bash 

######################################################

#script to monitor the node health of virtual machines
#author: Hemali Jayswal
#Date:
#Version: V1

######################################################
set -xeo 
# -x debug mode : shows the command and then output
# -e exit the script when there is an error, checks for last cmd output when | is used
# -o if there is pipe used in between then even if first cmd fails but next ome passes then error is ignore and script runs to avoid this use -o checks for "pipefail"

df -h
free -g
nproc

#see all the processes running
ps -ef | grep "amazon" | awk -F" " '{print $2}'
#-e all the process in bg as well, -f full format
# awk -> print specific column, separated by " "

