#! /bin/bash

# Do SO updates
apt-get update -y
apt-get upgrade -y
apt-get install -y curl exuberant-ctags git htop fzf fish powerline fonts-powerline vim-gtk

# Install Go SDK
wget -q https://golang.org/dl/go1.15.7.linux-amd64.tar.gz 
tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz

# Install minimal GUI
# apt-get install -y lxsession lxde-core xorg lightdm

# Set profile environment paths
cat /config/.profile > .profile

# Set fish as default shell

chsh -s /usr/bin/fish