#! /bin/bash

echo
# Set Go install environment variables
export GOPATH=/home/vagrant/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
echo $PATH 
echo
echo "Gopath configured to hugo install."

# Get hugo sources
echo
echo "Cloning hugo sources..."
# cd /home/vagrant/src/github.com
git clone https://github.com/gohugoio/hugo.git
echo
echo "Hugo sources Cloned."
echo

# Build Hugo blog engine
echo "Installing hugo..."
echo
#cd /home/vagrant/src/github.com/hugo
cd hugo
hugoCGO_ENABLED=1 go install --tags extended
echo
echo "Hugo compiled."

