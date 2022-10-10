#!/bin/bash 

echo -e  "Enter 2 number for arithmetic operations:\n"
read -p "Enter first number: " x
read -p "Enter the second number: " y

#Addition
((sum=x+y))
echo "$sum"

#Subtraction 
((sum=x-y))
echo "$sum"

#Multiplication
((sum=x*y))
echo "$sum"

#Division
((sum=x/y))
echo "$sum"

#Modulo
((sum=x%y))
echo "$sum" 

#Increment x and y
((sum=x++))
echo "$sum"
((sum=y++))
echo "$sum"

#Decrement the x and y
((sum=x--))
echo "$sum"
((sum=y--))
echo "$sum"

result=$(bc<<<"scale=3;$y/$x")
echo "The division of $x and $y is : $result"
