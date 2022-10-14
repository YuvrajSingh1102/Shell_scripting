#!/bin/bash

echo "Below code is output for \$*"

for each in "$*"
do
	echo "$each"
done

echo "Below code is output for \$@ "
for each in "$@"
do
	echo "$each"
done

#Type on cmd ./<our_file_name.sh> 1 2 3 4 5 a b c d e - You can see the difference 
#Another input - ./<our_file_name.sh> 1 "2 3" 4 "5 ab" bs hgj uio - in this you can see full difference and use case of the both command.
