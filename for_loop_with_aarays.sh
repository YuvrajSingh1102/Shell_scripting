#!/bin/bash

<<Yuvraj
for each in nginx hello
do
	echo "The service is: $each"
done
Yuvraj

myService=(nginx hello)

for each in ${myService[@]}
do
	echo "The service is: $each"
done
