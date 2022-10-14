#!/bin/bash

#logic by me
<<yuvraj
systemctl status hello.service 2>&1 1>/dev/null
diff=$(echo $?) #2>&1 1>/dev/null

if [[ $diff -eq 0 ]]
then
	echo "Hello service is already running."
else
	echo "Hello service is ready to start"
	sudo systemctl start hello.service
	echo "Hello service is started sucessfully."
fi
yuvraj

#Advance logic
if [[ $(id -u) -eq 0 ]]
then
	if systemctl status hello.service 2>&1 1>/dev/null
	then
		echo "Hello service is already running."
	else
		echo "Hello service is ready to start."
		sudo systemctl start hello.service
		echo "Hello service is started successfully."
	fi
else
	if sudo -v 2>&1 1>/dev/null
	then
		if systemctl status hello.service 2>&1 1>/dev/null
		then
			echo "Hello service is already running."
		else
			echo "Hello service is ready to start."
			sudo systemctl start hello.service
			echo "Hello service is started successfully."
		fi
	else
		echo "Sorry!! You are not allowed to start the hello service. Because you are not the root user and also you dont have sudo previlages to start it."
	fi
fi

