#!/bin/bash

#installbackup
#sudoaptinstalltimeshift

#installgit
#sudoapt-getinstallgit

#sudoaptinstallopenssh-server-y
#systemctlsshdstatus
#systemctlrestartsshd.service
#systemctlstatussshd.service
 
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
