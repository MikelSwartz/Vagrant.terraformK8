# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
  config.vm.define "terraformK8" do |terraformK8|
          terraformK8.vm.box =  "bmcgonigle/centos68"
	  terraformK8.vm.hostname = "K8.workshop"
          terraformK8.vm.network :private_network, ip: "192.168.50.5", bridge: "eth0"
# forwarded port if you need it. 
#	  terraformK8.vm.network "forwarded_port", guest: 80, host: 8010
	  terraformK8.vm.provision "shell",
            path: "terraformK8.provision.sh"
  end
end
