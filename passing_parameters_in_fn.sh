#!/bin/bash

addition()
{
	m=$1
	n=$2
	result=$((m+n))
	echo "The additon of the $m and $n is: $result"
}

x=5
y=6
addition $x $y

p=10
q=20
addition $q $q

addition 20 80
