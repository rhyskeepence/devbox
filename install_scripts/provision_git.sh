#!/bin/sh

sudo apt-get -y install git-core
git config --global http.proxy $http_proxy
git config --global color.ui true
git config --global alias.last "log -1 HEAD"
git config --global alias.st "status -sb"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset abbrev-commit' --date=relative"


