#!/bin/sh

sudo apt-get -y install apache2

echo "export APACHE_HOME=/etc/apache2" >> ~/.bashrc