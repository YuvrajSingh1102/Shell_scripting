#!/bin/bash

read_inputs()
{
	read -p "Enter the number 1: " num1
	read -p "Enter the number 2: " num2
}

addition()
{
	sum=$((num1+num2))
	echo "The answer after addition is: $sum"
}

subtraction()
{
	sum=$((num1-num2))
	echo "The value after substraction is: $sum"
}

read_inputs
addition
subtraction

