#!/bin/bash

Server_Name=$(uname -r)
IP_Address=$(ifconfig | grep inet | awk 'NR==1{ print $2 }')
OS_Type=$(uname)
Up_time=$(uptime | awk '{ print$3 }' | tr -d ',')

#Creating header in CSV file
echo "S_No, Server_Name, IP_Address, OS_Type, Up_time" > server_info.csv
echo "1,$Server_Name, $IP_Address, $OS_Type, $Up_time" >> server_info.csv

