#!/bin/bash

<<Yuvraj
define_variable()
{
	local x=6
}

define_variable
echo "The value of x is: $x"
Yuvraj


define_variable()
{
	local x=6
	echo "$x"
}

y=$(define_variable)
echo "The value of x is been passsed from fucntion to y and here valur of y is: $y"
