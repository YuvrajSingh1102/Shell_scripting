#!/usr/bin/awk -f

BEGIN {
	print "Finding a and b values for values_awk.txt"
}

{
	a=$1
	b=$2
	print "a="a, "b="b
}

END {
	print "Completed reading a and b values"
}

#if you are not including the she banh line the first line(#!/usr/bin/awk).Then you have to use this command in console to see the output of the file.
#it's like this :- awk -f awk_scripts.awk values_awk.txt
#Then you can see the output.
#
#
#If you mention the she bang line(#!/usr/bin/bash).Then just give the script execution permission and run it with ./awk_script.awk values_awk.txt
