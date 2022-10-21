#!/bin/bash

echo "Enter the values for arithmetic calculation"
read -p "Enter the number 1: " a
read -p "Enter the number 2: " b

echo $a $b | awk '{ a=$1 ; b=$2 ; print "The Addition of " a " and " b " is "a+b}'
echo $a $b | awk '{ a=$1 ; b=$2 ; print "The subtraction of " a " and " b " is " a-b}'
echo $a $b | awk '{ a=$1 ; b=$2 ; print "The multiplication of " a " and " b " is " a*b}'
echo $a $b | awk '{ a=$1 ; b=$2 ; print "The division of " a " and " b " is " a/b}'
