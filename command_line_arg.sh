#!/bin/bash

echo "$1"
echo "$2"
echo "$3"

#./command_line_arg 10 20 30

echo "${10}" #If you are taking the 2 digit commmand line arguments then they should in the curley brases.

echo "The total number of command line arguments are: $#"

echo "All the command line arguments are : $*"
echo "All the command line arguments are : $@"
