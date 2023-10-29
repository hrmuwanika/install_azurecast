#!/bin/sh

sudo apt update && sudo apt upgrade -y

sudo apt install wget curl git -y

sudo mkdir -p /var/azurecast
cd /var/azurecast

sudo git clone https://github.com/AzuraCast/AzuraCast.git
cd AzureCast

sudo chmod +x docker.sh
./docker.sh install-docker
./docker.sh install-docker-compose
./docker.sh install
       
