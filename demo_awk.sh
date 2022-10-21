#!/bin/bash

pwd
date

awk 'BEGIN { print "Hello is showing the use case of the awk and shell script mixutre" }'
awk -f demo_hi.awk
a=$(awk -f demo_hi_2.awk)

echo "a value is: $a"
