#!/bin/sh

sudo apt-get -y install libfontconfig

sudo npm install --global grunt-cli
sudo npm install --global phantomjs

# casperjs
echo "export CASPER_HOME=/vagrant/deps/n1k0-casperjs-4f105a9" >> ~/.bashrc
echo 'export PATH=$CASPER_HOME/bin:$PATH' >> ~/.bashrc