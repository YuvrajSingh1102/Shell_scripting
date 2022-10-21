#!/bin/bash

read -p "Enter the value of a: " a
read -p "Enter the value of b: " b

echo "$a $b" | awk '{x=$1 ; y=$2; print "x="x, "y="y}'
echo "$a $b" | awk '{x=$1 ; y=$2; print "sum="x+y}'
