# Devbox Environment

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
* Download [Oracle Database 11g Express Edition for Linux x64](http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html]. Place the file oracle-xe-11.2.0-1.0.x86_64.rpm.zip in the directory modules/oracle/files of this project. (Alternatively, you could keep the zip file in some other location and make a hard link to it from modules/oracle/files.)
* Run `Vagrant up` form the checkout out location
* Ssh onto the box!


## What it ships with

1. Oracle
1. Java 7
1. Maven
1. Gits 

## Ssh 

By default the user is `vagrant`.

If you're using Putty, you might need to convert the `insecure_private_key` using `puttygen.exe` to be able to login to the guest machine. 

## Guest machine setup

1. [Setup a ssh key](https://help.github.com/articles/generating-ssh-keys) on the guest machine. Upload this to your git server (Github or similar).
1. Add your specific git config (ie, `git config --global user.name "Your Name"` and `git config --global user.email you@example.com`)


## Shared folders

The checkout location is automatically shared between the host and guest machines.


## Guest VM

### Some folders

Under the checkout folder, the following folders are not added to git.

 * `db` folder for Oracle XE's databases
 * `dev` your dev folder, checkout project files here as this folder is shared with the host machine meaning you can run your IDE form your host environment and point it at here.