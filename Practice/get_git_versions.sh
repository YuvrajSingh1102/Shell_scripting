#!/bin/bash

which wget 1>/dev/null 2>/dev/null

if [ $? -ne 0 ]
then
	echo "Please install wget and retry again"
	exit 1
fi

if [ -e "index.html" ]
then
	echo "Removing Old index.html"
	rm -rf index.html
fi

url=https://mirrors.edge.kernel.org/pub/software/scm/git/
wget $url

if [ $? -ne 0 ]
then
	echo "Unable to download the git info from this website $url"
	exit 2
fi

while read line 
do
	git_vers+=($(echo $line | sed -n '/git-\([0-9]\+\.\)\+tar.gz/p' | awk -F '"' '{ print $2 }' | cut -c 5- | awk -F '.tar.gz' '{ print $1 }'))
	#sleep 1
done < index.html

echo "All available git version are:-"
cnt=0
no_vers=${#git_vers[*]}
WIDTH=20
for each_vers in  ${git_vers[*]}
do
	#echo -e "\t\t ${git_vers[$cnt]} \\t ${git_vers[$((cnt+1))]} \\t ${git_vers[$((cnt+2))]}"
	printf "%-*s %-*s %-*s\n" $WIDTH ${git_vers[$cnt]} $WIDTH ${git_vers[$((cnt+1))]} $WIDTH ${git_vers[$((cnt+2))]}
	cnt=$((cnt+3))

	if [ $cnt -gt $no_vers ]
	then
		break
	fi
done
