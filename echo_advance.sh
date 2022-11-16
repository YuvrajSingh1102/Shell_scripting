#!/bin/bash

#echo "This is the first line"
#echo "This is the second line"

echo -e "This is the first line\nThis is the second line."
echo

cat << Yuvraj
The user is $USER
The home for this $USER is : $HOME
Yuvraj

cat << Yuvraj > out.txt
The user is $USER
The home for this $USER is : $HOME
Yuvraj

echo
echo "Hello this is Yuvraj" | tr [a-z] [A-Z]

#comments

#This is first way to comment any line.

<< Comment
This is the second way to comment multiple lines.
heloooo helllooooooooooooo
hyeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
i am a student.
Comment

: '
This is the third way to comment multiple lines.
hdsiugrugwjghsughw
fhewufewiewp;weljewjfeywfgef
uwoqwghvvvsgwdqsq
\yuvgdsjwqiejfqlefj
'
