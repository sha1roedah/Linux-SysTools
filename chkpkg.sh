#!/bin/bash

# checks to see if a specified package is installed

# create a variable to store the output results
# USE THE TICKS INSTEAD OF QUOTES

#package=`dpkg -l | grep php`
#echo "${package}"

# prompt user for a package name
echo -n "ENTER DESIRED PACKAGE NAME: "

#take user input
read name

package=`dpkg -l | grep -i "${name}"`
version=`dpkg -l | grep -i "${name}" | awk ' { print $2,$3 }' `
# search output for the application
if [ "${package}" != "" ]
then
	echo "##########"
	echo "${name^^} IS INSTALLED"
	echo "###########"
	echo "INSTALLED VERSIONS: "
	echo "${version}"
# print whether the application exists or not
else
	echo "${name^} isn't installed"
#end the if statement
fi