#!/bin/bash

echo "=========HELLO SERVICE==========="
echo "Write start to start the hello service"
echo "Write stop to stop the hello service"
echo "Write restart to restart the hello service"
read -p "Please write the appropiate word enjoy hello services." option

if [[ $option == start ]]
then
	echo "Starting the hello service......"
	sudo systemctl start hello.service
	echo "Sucessfully started the hello.service"

elif [[ $option == stop ]]
then
	echo "Stopping the hello.service...."
	sudo systemctl stop hello.service
	echo "Succesfully stopped the hello service"

elif [[ $option == restart ]]
then 
	echo "Restarting the hello.service..."
	sudo systemctl restart hello.service
	echo "Sucessfully restarted the hello service"

else
	echo "Your option is invalid!!!"
	echo "Valid option are: start, stop and restart."
fi
