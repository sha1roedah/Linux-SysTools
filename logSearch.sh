#!/bin/bash

echo "ENTER KEYWORD(S) TO SEARCH FOR: "
echo "PLEASE ENTER MULTIPLE KEYWORKS SEPARATED BY A '|'"
echo ":  "
read keywords

egrep "${keywords}" /path/to/logfile | awk ' BEGIN { format = "%-20s %-30s %-10s %-80s %-15s %s\n"
					printf format, "IP Address", "Date/Time", "Method", "Resource", "Status Code", "Returned File size" 
					printf format, "----------", "---------", "------", "--------", "-----------", "------------------" }
					
					{ printf format, $1, $4, $6, $7, $9, $10} '

