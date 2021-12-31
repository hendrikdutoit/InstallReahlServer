#!/bin/bash
clear

# Create instlation sudo user
user_name=rtinstall
#useradd $user_name
adduser $user_name
usermod -aG sudo $user_name

sudo apt -y update
sudo apt -y install nfs-common
sudo mkdir -p /nfs
sudo mount 10.106.0.5:/mnt/rte_source /nfs

# Prompt to close the session
echo Session completed
echo Press any key to start next session
read quit