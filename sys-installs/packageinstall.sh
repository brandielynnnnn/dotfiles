#!/bin/bash

# checks if sudo is running script or exits
sudo -n true
test $? -eq 0 || { echo "You should have sudo privilege to run this script"; exit 1; }

# checks if "apt" is installed to install the package
test -x /usr/bin/apt || { echo "This script requires the apt package manager."; exit 1; }

# user prompt explaining what is going to be installed
echo "This script installs Ansible, and requires python3"
read -p "Would you like to install Ansible on your system? y to proceed, n to cancel.: " response
test "$response" == "y" || { echo "Installation cancelled"; exit 1; }


# seeing if ansible is installed 

if [ "$(dpkg -l | awk '/ansible/ {print $1}'|wc -l)" -ge 1 ]; then
	echo "Ansible is already installed or has name conflict, cancelling installation." 
	exit 1
else 
	echo "Ansible is not already installed, ready for installation."
fi 


# installing prereqs
apt -y update 

#installing based on ubuntu ansible guide 
apt install -y software-properties-common 

apt add-apt-repository --yes --update ppa:ansible/ansible

apt install -y ansible

echo "installation has been completed, run command for details: ansible --version" 
