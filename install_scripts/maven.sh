#!/bin/sh

sudo apt-get -y install maven

echo "export M2_HOME=/usr/share/maven" >> ~/.bashrc
echo "export MVN_HOME=/usr/share/maven" >> ~/.bashrc

if [ -n "${HTTP_PROXY}" ]; then
	echo "Updating proxy settings in $MVN_HOME/conf/settings.xml"
	
  host=`echo $HTTP_PROXY | cut -d':' -f 2 |  sed -r 's/^.{2}//'`
  port=`echo $HTTP_PROXY | cut -d':' -f 3`

  proxy_config=`echo "<proxy> <id>proxy</id> <active>true</active> <protocol>http</protocol> <host>$host</host> <port>$port</port> <nonProxyHosts>$NO_PROXY</nonProxyHosts> </proxy>"`

  cat $MVN_HOME/conf/settings.xml | sed -e "s|<proxies>|<proxies>${proxy_config}|g" > settings.xml

  sudo cp -f $MVN_HOME/conf/settings.xml $MVN_HOME/conf/settings.xml.bak
  sudo mv -f settings.xml $MVN_HOME/conf/

fi