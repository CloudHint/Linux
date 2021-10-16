#!/bin/bash

# Installbackup
if [ -z "$(which timeshift)" ]; then
sudo apt install timeshift
fi

# Install ssh
if [ -z "$(which sshd)" ]; then
sudo apt install openssh-server -y
systemctl sshd status
systemctl restart sshd.service
systemctl status sshd.service
fi
 
# Install terraform on linux if it is not installed
if [ -z "$(which terraform)" ]; then
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
fi

# Install git 
if [ -z "$(which git)" ]; then
	sudo apt-get install git
fi
