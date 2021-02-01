# -*- mode: ruby -*-
# vi: set ft=ruby :

## vm config scripts
$configScript = <<-SCRIPT
SCRIPT

## Init config
Vagrant.configure("2") do |config|

## set a godev box
## This session could be replicated for multiple vms  
config.vm.define "go" do |go| 
  
  ## Defined to consume less host resources
  ## The Vm's SO can be ubuntu 20.10 or debian 10

  #go.vm.box = "ubuntu/contrib-buster64" 
  go.vm.box = "ubuntu/groovy64"

  go.vm.hostname = "godev01"
  ## Select a non-used ip from your network
  ## Choose the correct real shared interface for bridge
  go.vm.network "public_network", ip: "192.168.2.150", bridge: "wlo1", hostname: true

  #set default route (You need this to clone github repos)
  go.vm.provision "shell",
    run: "always",
    inline: "route add default gw 192.168.2.1"


  ## Choose the port where you run your web server and redirect to host
  go.vm.network "forwarded_port", guest:80, host:5080
 
  ## Disable default vagrant share
  ## Enable config share to load config files
  go.vm.synced_folder ".", "/vagrant", disabled: true 
  go.vm.synced_folder "./config", "/config"
  go.vm.synced_folder "./share", "/home/vagrant/share"

  ## Run vm config script to setup the environment
  go.vm.provision "shell", path: "./config/config-init.sh"  
  go.vm.provision "shell", path: "./config/config-ubuntuswap.sh"   
  go.vm.provision "shell", privileged: false, path: "./config/config-home.sh"
  go.vm.provision "shell", privileged: false, path: "./config/config-go.sh"
  
  # Comment if you don't want a Hugo Engine
  go.vm.provision "shell", privileged: false, path: "./config/config-hugo.sh"
  
  # uncomment if you have a id_rsa key file in the host config dir
  #go.vm.provision "shell", privileged: false, path: "./config/config-hostssh.sh"
  
  go.vm.provision "shell", privileged: false, path: "./config/config-vim.sh"
  go.vm.provision :reload
  go.vm.provision "shell", privileged: false, path: "./config/config-shellfish.sh"
  go.vm.provision "shell", path: "./config/config-clean.sh"
  
  go.vm.synced_folder "./config", "/config", disabled: true 
  go.vm.provision :reload
  end
end


