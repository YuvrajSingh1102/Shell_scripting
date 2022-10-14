#!/bin/bash
if [[ $# -ne 1 ]]
then
	echo "Usage: $0 <anypath>"
	exit
fi

givenPath=$1

for each in $(ls $givenPath)
do
	if [[ -x $each ]]
	then 
		echo "$each has a execution permission"
	else
		echo "$each doesn't have execution permission"
	fi
done

