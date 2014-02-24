#!/bin/sh

# setup add-apt-repository
sudo apt-get -y install python-software-properties

# java
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java7-installer
sudo apt-get -y install oracle-java7-set-default
