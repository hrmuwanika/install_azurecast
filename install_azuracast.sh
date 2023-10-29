#!/bin/sh

sudo apt update && sudo apt upgrade -y

sudo apt install wget curl git -y

# Installing AzuraCast
sudo mkdir -p /var/azurecast
cd /var/azurecast

sudo curl -fsSL <https://raw.githubusercontent.com/AzuraCast/AzuraCast/main/docker.sh> > docker.sh

sudo chmod +x docker.sh
./docker.sh install-docker
./docker.sh install-docker-compose
./docker.sh install
       
sudo docker pull azuracast/azuracast
sudo docker-compose -f docker-compose.installer.yml up -d
