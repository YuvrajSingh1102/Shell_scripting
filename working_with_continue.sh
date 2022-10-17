
#!/bin/bash

echo "Starting for loop..."

<<Yuvraj
for each_input in $(seq 1 10)
do
	if [[ $each_input -gt 5 ]]
	then
		break
	fi
	echo "$each_input"
done
Yuvraj

<<Yuvraj
for each in $(seq 1 10)
do
	if [[ $each -ne 5 ]]
	then
		echo "$each"
	fi
done
Yuvraj

<<Yuvraj
for each in $(seq 1 10)
do 
	echo "$each"
done 

echo "For loop is over"
Yuvraj

for each in $(seq 1 10)
do
	if [[ $each -eq 5 ]]
	then
		continue 		#Continue will skip the current itration and start with another itration. After contiue whatever is written is doesnot execute.
	fi

	echo "$each"
done 

echo "For loop is completed."
