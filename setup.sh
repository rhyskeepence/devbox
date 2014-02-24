#!/bin/sh

# setup add-apt-repository
sudo apt-get -y install python-software-properties

# java
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java7-installer
sudo apt-get -y install oracle-java7-set-default

# maven
sudo apt-get -y install maven

# git
sudo apt-get -y install git-core
git config --global http.proxy $http_proxy
git config --global color.ui true
git config --global alias.last "log -1 HEAD"
git config --global alias.st "status -sb"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset abbrev-commit' --date=relative"


