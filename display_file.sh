#!/bin/bash

#ls

<<yuvraj
for each_input in $(ls)
do
	echo "$each_input"
done
yuvraj

<<yuvraj
count=1
for each_input in $(ls)
do
	if [[ $count -eq 1 ]]
	then
		echo "$each_input"
		((count++))
	fi
done
yuvraj

for each_input in $(ls)
do
	echo "Starting for loop"
	echo "$each_input"
	break
done

echo "For loop is finished,"
