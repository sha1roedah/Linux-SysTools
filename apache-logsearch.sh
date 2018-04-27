#!/bin/bash

# script to parse though http logs and identify possible malicious packets

egrep "cgi-bin|admin|\.php|\.asp" /path/to/logfile | awk ' BEGIN { format = "%-20s %-30s %-10s %-80s %-15s %s\n"
					printf format, "IP Address", "Date/Time", "Method", "Resource", "Status Code", "Returned File size" 
					printf format, "----------", "---------", "------", "--------", "-----------", "------------------" }
					
					{ printf format, $1, $4, $6, $7, $9, $10} '

