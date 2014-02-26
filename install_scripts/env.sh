#!/bin/sh

"echo \"Europe/London\" | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata"

sudo apt-get -y install python-software-properties

