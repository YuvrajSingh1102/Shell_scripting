#!/bin/bash

<<Yuvraj
while read line 
do
	echo "$line"

done < out.txt
Yuvraj

<<Yuvraj
while read f1 f2 f3 f4 f5
do
	echo "$f3"
done < out.txt
Yuvraj

<<Yuvraj
while IFS="," read f1 f2 f3 f4 f5
do
	echo "$f3"
done < out.txt
Yuvraj

#we dont want first line to come in output so:

OLD_IFS=$IFS

cat out.txt | awk 'NR!=1 {print}' | while IFS=" " read f1 f2 f3 f4 f5
do
	echo "$f3 $f2"
done

IFS=$OLD_IFS
