#!/bin/sh

# update ubuntu, starts on 12.04 (precise) lbs_release -a
# sudo apt-get update --fix-missing
# sudo apt-get dist-upgrade 

# setup add-apt-repository
# sudo apt-get install software-properties-common

# java
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java7-installer
sudo apt-get -y install oracle-java7-set-default