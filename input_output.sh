#!/bin/bash

my_name="yuvRAJ"
my_name_upp=${my_name^^}

read -p "Enter another name: " another_name
another_name_upp=${another_name^^}

echo "The upper case of my name is : $my_name_upp"
echo "The upper case of the name which you provided is : $another_name_upp"

#Default variable
read -p "Type name for default variable: "
echo $REPLY
