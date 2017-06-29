#!/bin/bash
export TZ=America/Los_Angeles
export DEBIAN_FRONTEND=noninteractive

echo "cd /vagrant/" > /home/ubuntu/.profile

apt-get update
apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual
apt-get -y install apt-transport-https ca-certificates curl software-properties-common

# add gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# verify fingerprint
apt-key fingerprint 0EBFCD88 | \
    grep "9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88" && \
    echo "apt-key fingerprint verified" || \
    (echo "apt-get fingerprint failed " && exit 1)
# amd repos
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update
apt-get -y install docker-ce

# test docker install was successful
docker run hello-world
