#!/bin/bash 

<< Yuvraj
[[ -x Hello.sh ]] && echo "Hello.sh has a execution permission" || echo "Hello.sh doesn't have execution permissions"
Yuvraj

<< Yuvraj
if [[ -x Hello.sh ]]
then 
	echo "Hello.sh has a execution permission"
else
	echo "Hello.sh doesn't have execution permission"
fi
Yuvraj


#Using loops check the files having execution permission or not 

#for each in /home/einfochips/Linux_practice/Shell_script/*
#for each in Hello.sh input_output.sh intro_loops.sh
for each in $(ls)
do
	if [[ -x $each ]]
	then 
		echo "$each has a execution permission"
	else
		echo "$each doesn't have execution permission"
	fi
done

