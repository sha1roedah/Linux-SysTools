#!/bin/bash

# script to parse the /etc/passwd file

cat /etc/passwd | awk -F: ' BEGIN { format = "%-20s %-20s %-25s %-30s %s\n"

					printf format, "USERNAME","USER ID","GROUP ID","HOME DIRECTORY","SHELL"
					printf format, "--------","-------","--------","--------------","-----" }
					
				{ printf format, $1, $3, $4, $6, $7 } '

				
