#!/bin/bash

# Execute common system host commands

# Hostname
t_host=`hostname`
# t_host=$(hostname)

# current running processes 
t_ps=$(ps -ef)

# Last logged in users
t_last=$(last)
# limit output to last 10 events: last -10

# System Uptime
t_uptime=$(uptime)

# network sockets
t_netstat=$(netstat -an --inet) #lsof -i -n 
# print output for each command

echo "\n##############\n"
echo "Hostname: ${t_host}"

echo "\n##############\n"
echo "Running Processes: ${t_ps}"

echo "\n##############\n"
echo "Last logged in users: ${t_last}"

echo "\n##############\n"
echo "Uptime: ${t_uptime}"

echo "\n##############\n"
echo "Open network sockets: ${t_netstat}"

echo "\n##############\n"

