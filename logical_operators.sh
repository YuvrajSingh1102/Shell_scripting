#!/bin/bash

#Logical &&(AND) operation
<< logical_and
read -p "Enter a number: " num

if [[ $num -gt 50 && $num -lt 100 ]]
then
	echo "$num is in the range of 50-100"
else
	echo "$num is not in the range of 50-100"
fi
logical_and

#Logical OR(||) operation

read -p "Enter the confirmation to start the hello service (yes or no): " cnf

if [[ $cnf == "yes" || $cnf == "y" || $cnf == "YES" || $cnf == "Y" || $cnf == "Yes" ]]
then
	echo "Starting the hello service..."
	sudo systemctl start hello.service
	echo "Hello service is started successfully."
else
	echo "Skipping....."
fi
