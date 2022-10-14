#!/bin/bash

TO="yuvisolanki986@gmail.com"
Th_limit=40000

Free_RAM=$(free -mt | grep -E "Total" | awk '{print $4}')

if [[ $Free_RAM -lt $Th_limit ]]
then 
	#echo -e "Server is running with low RAM.\nAvailable RAM is: $Free_RAM" | mail -s "RAM Info: $TO"
	echo -e "Server is running with low RAM.\nAvailable RAM is: $Free_RAM" | mail -s "RAM Info: $TO -t"
fi
