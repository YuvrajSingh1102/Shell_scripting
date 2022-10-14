#!/bin/bash
#Installing multiple pacakages

if [[ $(id -u) -ne 0 ]] 
then 
	echo "Please run from root user or with sudo privilages."
	exit 1
fi

for each_pacakage in vim vlc nginx
do
	if which $each_pacakage &>/dev/null
	then
		echo "This $each_pacakage is already installed."
	else 
		echo "The $each_pacakage is installing..."
		sudo apt-get install $each_pacakage &>/dev/null

		if [[ $? -eq 0 ]]
		then
			echo "The $each_pacakage installed sucessfully."
		else
			echo "The $each_pacakage can't be installed. Unable to install."
		fi
	fi
done

