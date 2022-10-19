#!/bin/bash

display()
{
	y=67
	echo "The value of x is in the function is: $x"
	x=55
	local p=90	#local keyword make the variable use in the function only outside function cannot able to access this local variable value
}

x=5
display
echo "The value of y outside the function is: $y"
echo "The value of x outside the function body is: $x"
echo "The value is p is: $p"	#So here the output will not come because it is declared in as local in funtion and its scope is within the function itself
