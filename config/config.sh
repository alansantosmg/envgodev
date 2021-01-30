#! /bin/bash

# Do SO updates
apt-get update -y
apt-get upgrade -y
apt-get install -y curl exuberant-ctags git htop fzf fish vim

# Install Go SDK
wget -q https://golang.org/dl/go1.15.7.linux-amd64.tar.gz 
tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz

# Install minimal GUI
# apt-get install -y lxsession lxde-core xorg lightdm

# Set profile environment paths
cat /config/.profile > .profile

# Set fish as default shell
chsh -s /usr/bin/fish




#echo $GOPATH                                                                   
#[ -f ~/.profile ] || touch ~/.profile                                             
#[ -f ~/.bash_profile ] || touch ~/.bash_profile                                    

#grep 'PATH=$HOME/.local/bin:/usr/local/go/bin:$GOPATH/bin' ~/.profile || echo 'export PATH=$HOME/.local/bin:/usr/local/go/bin:$GOPATH/bin' | tee -a ~/.profile                                                                                              
#grep 'PATH=$HOME/.local/bin:/usr/local/go/bin:$GOPATH/bin' ~/.bash_profile || echo 'export PATH=$HOME/.local/bin:/usr/local/go/bin:$GOPATH/bin' | tee -a ~/.bash_profile                                                                                   
                                                                  
#. ~/.bash_profile                                                                  
#echo PATH $PATH                                                                   



# Get and set Go SDK





########### Setup sources DIR



