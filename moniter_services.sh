#!/bin/bash

myService=(nginx hello)

for each in ${myService[@]}
do
	systemctl status $each 1>/dev/null 2>/dev/null

	if [[ ! $? -eq 0 ]]
	then
		echo "The service $each is not running."
	fi
done
