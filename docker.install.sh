!/bin/bash

#Author: adzowa

#Description: Installation of Docker on Centos7 

##grabbing test-docker.sh from docker website 

curl -fsSL https://test.docker.com -o test-docker.sh

##executing test-docker script

sh test-docker.sh

echo "testing for docker installation"
docker -v 

sleep 2

echo "Checking the docker daemon status"

sudo systemctl status docker

echo "Starting and enable docker daemon"

sudo systemctl start docker && sudo systemctl enable docker
