#!/bin/sh

sudo chmod g+w $ORACLE_HOME/network/admin/tnsnames.ora
echo "XE =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = 127.0.0.1)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = XE)
    )
  )" >> $ORACLE_HOME/network/admin/tnsnames.ora
 echo exit | sqlplus system/manager@//localhost:1521/XE @/vagrant/provision_oracle_conf.sql