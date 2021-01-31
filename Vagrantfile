# -*- mode: ruby -*-
# vi: set ft=ruby :


## vm config scripts
$configScript = <<-SCRIPT
SCRIPT

## Init config
Vagrant.configure("2") do |config|

## set a godev box
## This session could be replicated for multiple vms  
config.vm.define "godev" do |godev| 
  
  ## Defined to consume less host resources
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  end

  ## The Vm's SO can be ubuntu 20.10 or debian 10
  godev.vm.box = "debian/contrib-buster64" 
  #godev.vm.box = "groovy/groovy64"

  ## Select a non-used ip from your network
  ## Choose the correct real shared interface for bridge
  godev.vm.network "public_network", ip: "192.168.2.133", bridge: "wlo1"

  ## Choose the port where you run your web server and redirect to host
  godev.vm.network "forwarded_port", guest:80, host:5500
 
  ## Disable default vagrant share
  ## Enable config share to load config files
  godev.vm.synced_folder ".", "/vagrant", disabled: true 
  godev.vm.synced_folder "./config", "/config"

  ## Run vm config script to setup the environment
  godev.vm.provision "shell", path: "./config/config.sh"
 
 
  godev.vm.provision "shell", privileged: false, path: "./config/config2.sh"
  godev.vm.provision :reload
  godev.vm.provision "shell", privileged: false, path: "./config/config-fish.sh"
  godev.vm.provision :reload
  end

end


