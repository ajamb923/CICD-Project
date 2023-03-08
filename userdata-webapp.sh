#!/bin/bash

#Install docker 
sudo apt update -y
sudo apt-get upgrade -y
sudo apt-get install curl

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
#apt-cache policy docker-ce
sudo apt install docker-ce -y




#Install Minikube
sudo apt update -y
sudo apt upgrade -y
sudo reboot
sudo apt install -y curl wget apt-transport-https
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

#Install Kubectl utility
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

#Need to manually do for some reason, OR add to Provisioner file and run remotely
sudo usermod -aG docker $USER && newgrp docker
minikube start --driver=docker

#Run After to check
# minikube status
# kubectl cluster-info
# kubectl get nodes