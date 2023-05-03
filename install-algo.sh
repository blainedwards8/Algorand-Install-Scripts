#upgrade the system
sudo apt update
sudo apt upgrade

#remove unecessary packages
sudo apt-get remove docker docker-engine docker.io containerd runc

#install curl
sudo apt install -y curl

#install python3 and pip3
sudo apt install -y python3-pip

#install git
sudo apt install -y git-core

#install docker using the convenience install script
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x ./get-docker.sh
sudo sh get-docker.sh

sudo groupadd docker
sudo usermod -aG docker $USER

#install docker compose
sudo pip3 install docker-compose

#clone the sandbox repo
git clone https://github.com/algorand/sandbox.git

#reload bash
source ~/.bashrc

#enter into the sandbox directory
cd sandbox