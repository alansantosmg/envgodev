#! /bin/bash

# Set Go install environment variables
echo 
echo "Set GOPATH and GOROOT."
echo
export GOPATH=/home/vagrant/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
echo $PATH 
echo 

echo "Getting go Tools"
echo
# Install go tools
go get -u golang.org/x/tools/...
echo
echo "Go tools installed"