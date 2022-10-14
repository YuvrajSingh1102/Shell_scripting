#!/bin/bash

<<Yuvraj
echo "We are generating the infinity for loop"

for((;;))
do 
	echo "Yuvraj Singh Solanki"
	sleep 1
done
Yuvraj


count=1
echo "We are generating the infinity for loop"

for((;;))
do 
	echo "Yuvraj Singh Solanki"
	((count++))
	sleep 1

	if [[ $count -eq 10 ]]
	then
		break
	fi
done

echo "Out of the loop"
