#!/bin/bash

#which apache2 #2>&1 1>/dev/null

if which apache2 2>&1 1>/dev/null
then
	echo "The apache2 is installed in the local system"
	echo "The version of the apache2 is: $(apache2 -v)"
else
	echo "The apache is not installed in the local system"
fi
