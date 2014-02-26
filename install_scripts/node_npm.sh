#!/bin/sh

sudo apt-add-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get -y install nodejs

# useful related technologies
sudo npm install --global grunt-cli
sudo npm install --global phantomjs