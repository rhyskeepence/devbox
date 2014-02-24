# Common Dev Environment

Forced to run on Windows but hanker for *nix? Mingw32 and Cygwin not doing it for you? Use this handy standard dev environment and all your devs can bootstrap their desktop with a standard tool stack.

This project is a fork of hilverd's [Oracle and Ubuntu setup](https://github.com/hilverd/vagrant-ubuntu-oracle-xe).

## Dependencies

1. Download [Vagrant](http://www.vagrantup.com/)
1. Download [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## Instructions

* git clone https://github.com/hilverd/vagrant-ubuntu-oracle-xe.git
* vagrant plugin install vagrant-vbguest
* If you're behind a proxy:
** vagrant plugin install vagrant-proxyconf
** uncomment and fill in proxy configuration in `Vagrantfile`
* Download [Oracle Database 11g Express Edition for Linux x64|http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html]. Place the file oracle-xe-11.2.0-1.0.x86_64.rpm.zip in the directory modules/oracle/files of this project. (Alternatively, you could keep the zip file in some other location and make a hard link to it from modules/oracle/files.)
* Run `Vagrant up` form the checkout out location
* Ssh onto the box!

## What it ships with

1. Oracle
2. Java

## Ssh 

If you're using Putty, you might need to convert the `insecure_private_key` using `puttygen.exe`. By default the user is `vagrant`.