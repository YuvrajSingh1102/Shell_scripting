#!/bin/bash

#To verify the shell script running user is root or not
userId=$(id -u)

if [[ $userId -eq 0 ]]		#id -u = non zero if you are not root and of you are root then id -u is will be 0. From this the logic came was to identify user or root by id -u
then
	echo "You are root"
else
	echo "You are not root"
fi
