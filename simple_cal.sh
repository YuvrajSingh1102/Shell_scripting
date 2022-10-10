#!/bin/bash

echo -e "Enter two numbers:- "
read -p "Enter the first number: " x
read -p "Enter the second number: " y
echo -e  "Enter your option:\n1.Addition\n2.Substraction\n3.Multiplication\n4.Division"
read option

case $option in
	1)
		echo "You have selected the Addition option"
		echo "The addition of the $x and $y is: $((x+y))"
		;;

	2)
		echo "You have selected the Substraction option"
		echo "The subtraction of the $x and $y is: $((x-y))"
		;;

	3)
		echo "You have selected the Multiplication option"
		echo "The multiplication of the $x and $y is: $((x*y))"
		;;

	4)
		echo "You have selected the Division option"
		echo "The division of $x and $y is: $((x/y))"
		;;
	
	*)
		echo "You have selected invalid option! Please try again." 
		;;
esac

