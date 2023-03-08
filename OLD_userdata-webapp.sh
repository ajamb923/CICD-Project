#!/bin/bash

#Install docker 
sudo apt update -y
sudo apt-get upgrade -y
sudo apt-get install curl

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
#apt-cache policy docker-ce
sudo apt install docker-ce -y



#Install Minikube
sudo apt-get install apt-transport-https
sudo wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod 755 /usr/local/bin/minikube

#Install kubectl
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl




    #after installation
    sudo mv /root/.kube /root/.minikube $HOME
    sudo chown -R $USER $HOME/.kube $HOME/.minikube 
    #check after ssh'ing 
        # kubectl get nodes


#INSTALLING MINIKUBE IS NOT WORKING, IT WONT START.
https://phoenixnap.com/kb/install-minikube-on-ubuntu
# going to create on ubuntu 22.04 instead 


