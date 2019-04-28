#!/bin/sh
# Update System
echo "System Update"
apt-get -y update
echo "Update completed"
# Installing the applications needed to build Nodejs
apt-get -y install libssl-dev git-core pkg-config build-essential curl gcc g++ checkinstall
# Download & Unpack Node.js - v7.3.0
echo "Download Node.js - v7.3.0"
mkdir /tmp/node-install
cd /tmp/node-install
wget https://nodejs.org/dist/v12.0.0/node-v12.0.0.tar.gz
tar -xvzf node-v12.0.0.tar.gz
echo "Node.js download & unpack completed"
# Install Node.js
echo "Compiling and installing Node.js"
cd node-v12.0.0
./configure && make && checkinstall --install=yes --pkgname=nodejs --pkgversion "12.0.0" --default
echo "Node.js install completed! Deleting The /tmp files"
rm -rf /tmp/node-install
echo "If you have made it this far in the script with no errors popping up all is well have a good day"
