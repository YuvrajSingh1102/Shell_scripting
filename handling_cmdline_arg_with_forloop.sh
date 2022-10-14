#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo "Usage: $0 <pacakage1_name> <pacakage2_name> <pacakage3_name>......"
	exit 1
fi

if [[ $(id -u) -ne 0 ]]
then
	echo "Please run from root user or with sudo privilages."
	exit 2
fi

for each_pacakage in $@
do
	if which $each_pacakage &>/dev/null
	then
		echo "The $each_pacakage is already installed in your system."
	else
		echo "The $each_pacakage is started installing...."
		sudo apt-get install $each_pacakage &>/dev/null

		if [[ $? -eq 0 ]]
		then
			echo "Your $each_pacakage is installed sucessfully."
		else
			echo "Unable to install $each_pacakage. Please try again!! Their might be an error."
		fi
	fi
done
