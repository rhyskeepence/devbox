#!/bin/sh

"echo \"Europe/London\" | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata"

sudo apt-get -y install python-software-properties

# Pretty-print of some PATH variables
echo "alias path='echo -e \${PATH//:/\\\n}'" >> ~/.bashrc
echo "alias libpath='echo -e \${LD_LIBRARY_PATH//:/\\\n}'" >> ~/.bashrc
