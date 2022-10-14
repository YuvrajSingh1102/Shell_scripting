#!/bin/bash

<< comment 
read -p "Enter your service to execute your action on it: " service
read -p "Enter your action to execute on your service $service: " action

sudo systemctl $action $service
comment

if [[ $# -ne 2 ]]
then
	echo "Hey!! Please run your script as follows"
	echo "Usage: $0 <serviceName> <ActionToExecuteOnService>"
	echo "Valid ActionToExecuteOnService are: start, stop, status and restart"
	exit 1
fi

#read -p "Enter your service to execute your action on it: " service
#read -p "Enter your action to execute on your service $service: " action
serviceName=$1
action=$2
sudo systemctl $action $serviceName

