#!/bin/bash
sudo su
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
sudo systemctl start jenkins
#sudo ufw allow 8080
#sudo ufw allow OpenSSH
#sudo ufw enable


# DID NOT WORK, CHECK #userdata-jenkins2.sh
