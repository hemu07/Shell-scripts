#!/bin/bash
#Author: Hemali Jayswal
#######################################################################
# Script to output username,date and time, uptime, last login, disk space, ram utilisation, CPU processes
#

echo "-------------------WELCOME: $(whoami) -----------------------------"
echo "Basic details of your system at present: "
echo "Kernel version: " $(uname)
echo "Date: " $(date)
echo "Uptime: " 
uptime

echo "-------------------------------------------------------------------"
echo "currently connected: "
w
echo "Last logins:"
last -a | head -3
echo "Disk and Memory usage:"

df -h | xargs | awk '{print "Free/total disk : " $11 " / " $9}'
free -m | xargs | awk '{print "Free/total memory: " $10 " / " $9}'

echo "-------------------------------------------------------------------"

echo " utilization and most expensive processes: "
top -b | head -3

