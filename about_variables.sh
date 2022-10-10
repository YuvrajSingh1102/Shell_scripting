#!/bin/bash

s="Bash Shell Scripting"
echo "Welcome to $s"
echo "$s is powerful in linux environmnet"
echo "Now we are working with the $s"
echo
SshStatus=$(sudo systemctl status ssh.service | awk '/Active/ { print $3}' | tr -d "[()]")
echo "The status of the nginx service is : $SshStatus"

