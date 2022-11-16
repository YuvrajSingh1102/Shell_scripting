#!/bin/bash

file_usage_threshold=40

rm -rf file_sys_info.txt

df -Ph | grep -vE "Filesystem|tmpfs" | while read line
do
	file_name=$(echo $line | awk '{ print $1 }')
	file_usage=$(echo $line | awk '{ print $5 }' | sed 's/%//g')
	
	echo "file system name: $file_name, file system usage: $file_usage"	
	
	if [[ $file_usage -gt $file_usage_threshold ]]
	then
		echo "$file_name : $file_usage " >> file_sys_info.txt
	fi
done

count=$(cat file_sys_info.txt | wc -l)
if [ $count -gt 0 ]
then
	echo "Some file system usage is more than the threshold"
	echo "The files are:-"
	cat file_sys_info.txt
	echo -e "Subject:Alert \n\n $(cat file_sys_info.txt)\n" | /usr/sbin/sendmail yuvisolanki986@gmail.com
fi


