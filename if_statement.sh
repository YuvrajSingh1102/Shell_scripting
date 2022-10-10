#!/bin/bash

#First logic
if which apache2 2>/dev/null 1>/dev/null		#this 2>/dev/null and 1>/dev/null is used to store the output of the which apache2 and it stores the sucess and failure in respective 1 & 2
then
	echo "The apache is installed in the system"
	echo "The version of the apache2 is: $(apache2 -v)"
fi

echo

#Second logic
which apache2 2>&1 1>/dev/null
if [[ $? -eq 0 ]]
then
	echo "The apache is installed in the system"
	echo "The version of the apache2 is: $(apache2 -v)"
fi
