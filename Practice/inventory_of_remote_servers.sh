#!/bin/bash

print_header(){
	printf "#%0.s" $(seq 1 $(tput cols))
	printf "\n"
}

center_msg(){
	msg=$1
	terminal_col=$(tput cols)
	msg_len=$(echo ${#1})
	pre_space=$(($((terminal_col-msg_len))/2))
	
	print_header
	printf " %0.s" $(seq 1 $pre_space)
	printf "%s" "$1"
	printf "\n"
	print_header
}

check_remotepass_file(){
	if [ ! -e "remotepass" ]
	then
		center_msg "Please store your password in >>remotepass<< file and try again!!!"
		exit 1
	fi
}

check_remoteuser_file(){
	if [ ! -e "remoteuser" ]
	then
		center_msg "Please store your remote user in >>remoteuser<< file and try again!!"
		exit 2
	fi
}

check_list_of_servers_file(){
	if [ ! -e "list_of_servers.txt" ]
	then
		center_msg "Please store your servers in the >>list_of_servers<< file and try again!!"
	fi
}

center_msg "Welcome to Inventory Script"
check_remotepass_file
check_remoteuser_file
check_list_of_servers_file

ssh_opt="sshpass -f remotepass ssh -n -o StrictHostKeyChecking=NO -o PubkeyAuthentication=NO einfochips"

echo "Server_name, OS_Type, OS_Version, ARC_Type, CPU_Type" > SERVER_INFO.csv
while read server
do
	echo "Working on $server"
	OS_Type=$($ssh_opt@$server "cat /etc/os-release" | grep -w "NAME" | awk -F '=' '{ print$2 }' | tr -d '"')
	OS_Version=$($ssh_opt@$server "cat /etc/os-release" | grep -w "VERSION" | awk -F '=' '{ print$2 }' | awk -F ' ' '{ print $1 }' | tr -d '"')
	ARC_Type=$(uname -p)
	CPU_Type=$(cat /proc/cpuinfo | grep "model name" | awk -F ': ' '{ print $2}')

	echo "OS_Type=$OS_Type"
	echo "OS_Version=$OS_Version"
	echo "Architecture_Type=$ARC_Type"
	echo "CPU_Type=$CPU_Type"

	echo "$server, $OS_Type, $OS_Version, $ARC_Type, $CPU_Type" >> SERVER_INFO.csv

done < list_of_servers.txt

center_msg "Thank you for using this Shell Script"
