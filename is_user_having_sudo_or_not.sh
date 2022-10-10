#!/bin/bash

#User is having sudo privilages or not.

sudo -v 1>/dev/null 2>/dev/null

if [[ $? -eq 0 ]]
then
	echo "The user $(id -un) is having sudo privilages on this host $(hostname)"
else
	echo "The user $(id -un) is not having sudo privilages on this host $(hostname)"
fi
