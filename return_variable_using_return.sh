#!/bin/bash

return_variable()
{
	local x=6
	return $x
}

return_variable
echo "The value of x is: $?"		#$? is the exit status of the function. so it will give the output pf x which is been returned from the function
