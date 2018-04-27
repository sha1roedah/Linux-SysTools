#!/bin/bash

# scan a network and return dns names 

# list an IP network to scan
#net="192.168.1."

# takes the user input
# ex. reverseDNS.sh 192.168.1.
net=${1}

# loop through the network
#seq 1 254
for ip in `seq 1 254`
do
	host ${net}${ip}
done

# print corresponding hostname