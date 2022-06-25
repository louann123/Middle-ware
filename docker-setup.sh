#!/bin/bash
###Author Louis
###Date- 6-17-22
##Description- Docker installation using script

echo "remove any old version of docker that might be installed"
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
 sleep 3
echo "set up docker repository"
sudo yum install -y yum-utils -y
sleep 3
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sleep 3
echo "Install docker engine"
sudo yum install docker-ce docker-ce-cli containerd.io -y
sleep 3
echo "check the status, start and enabble docker daemon"
sudo systemctl status docker
sleep 3
echo "If deamom is not up and running, start and enanble it using"
sudo systemctl start docker
sudo systemctl enable docker
sleep 3
echo "check the status of the daemon to make sure it is running with"
sudo systemctl status docker
