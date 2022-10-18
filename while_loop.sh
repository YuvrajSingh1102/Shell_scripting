#!/bin/bash

#infinity loop using while
<<Yuvraj
while true
do
	echo "Yuvraj"
	echo "How are you!!"
done
Yuvraj

<<Yuvraj
while :
do
	echo "Yuvraj"
	echo "How are you!!"
done
Yuvraj

<<Yuvraj
while date &>/dev/null
do
	echo "Date command is executing while loop"
done
Yuvraj

<<Yuvraj
num=1
while [[ $num -le 10 ]]
do 
	echo "$num"
	((num++))
done
Yuvraj

<<Yuvraj
#reading a file content
filename=out.txt
while read each_line
do
	echo "$each_line"
done < $filename
Yuvraj

cat out.txt | while read file_cont
do
	echo "$file_cont"
	echo "----------"
done

