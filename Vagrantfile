# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"  
  config.vm.hostname = "devbox"
  
  config.vm.network :forwarded_port, guest: 1521, host: 1521      # Oracle
  config.vm.network :forwarded_port, guest: 80, host: 8080        # http
  config.vm.network :forwarded_port, guest: 3000, host: 3000      # Specific http port for my app

  config.vm.provider :virtualbox do |virtualbox|
    virtualbox.customize ["modifyvm", :id,
                  "--name", "devbox",
                  # Oracle claims to need 512MB of memory available minimum
                  "--memory", "2048",
                  # Enable DNS behind NAT
                  "--natdnshostresolver1", "on"]
    virtualbox.gui = false
  end

  config.vm.provision "shell", path: "provision_oracle_conf.sh"
  config.vm.provision "shell", path: "provision_env.sh"
  config.vm.provision "shell", path: "provision_java.sh"
  config.vm.provision "shell", path: "provision_maven.sh"
  config.vm.provision "shell", path: "provision_git.sh"

  config.vbguest.auto_update = false

  # config.env_proxy.http = 
  # config.env_proxy.https = 
  # config.proxy.http     = 
  # config.proxy.https    = 
  # config.proxy.no_proxy = 

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    puppet.manifest_file = "base.pp"
    puppet.options = "--verbose --trace"
  end
end
