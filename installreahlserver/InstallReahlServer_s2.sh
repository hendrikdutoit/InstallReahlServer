#!/bin/bash
clear

# Variables
ini=$1 # Ini configuration file specific to platform and machine
projects_dir='/nfs/Projects'
InstallReahlServer_dir=$projects_dir'/InstallReahlServer/installreahlserver'
wheels_dir='/nfs/Lib/Wheels/'

# Install pre-req packages
sudo apt update
sudo apt-get -y install python3-pip

# Install home-grown packages
sudo apt-get -y install mysql-server
sudo apt-get -y install python3-venv
sudo pip install --upgrade BEETools
sudo pip install --upgrade ConfigParserExt
sudo pip install --upgrade InstallIt

#Install and configure the server packages
cd $InstallReahlServer_dir
#python3 -m pdb /mnt/rte_source/projects/rtServerInstall/0100/Code/rtServerInstall.py -c /mnt/rte_source/projects/rtServerInstall/0100/Code/rtServerInstallLinux.ini
sudo python3 $InstallReahlServer_dir/installreahlserver.py -c $InstallReahlServer_dir/$ini


# Prompt to close the session
echo Session completed
echo Press any key to start next session
read quit
