#! /bin/bash

# Do SO updates
echo
echo "Updating so..."
echo
apt-get update -y
apt-get upgrade -y
apt-get install -y curl exuberant-ctags mc xclip git htop gcc g++ make fzf fish powerline fonts-powerline vim-nox
echo
echo "System updated"
echo 


echo
# Adjust time zone
echo "Setting time zone to São Paulo..."
timedatectl set-timezone 'America/Sao_Paulo'
timedatectl set-ntp yes
timedatectl
echo
echo


echo
echo "Downloading go..."
echo
# Install Go SDK
wget -q https://golang.org/dl/go1.15.7.linux-amd64.tar.gz 
tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz
echo
echo "Go installed."
echo 

# Install minimal GUI
# apt-get install -y lxsession lxde-core xorg lightdm

echo "Modify shell to fish..."
echo
# Set fish as default shell
chsh -s /usr/bin/fish

echo
echo "modify Sysctl to run vscode on host without error..."
echo
echo "fs.inotify.max_user_watches=131072" >> /etc/sysctl.conf
