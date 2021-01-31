#! /bin/bash

# Set Go install environment variables
export GOPATH=/home/vagrant/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
echo $PATH 

# Install go tools
go get -u golang.org/x/tools/...

# Make src projects dirs
mkdir src && mkdir src/github.com

# Get hugo sources
cd /home/vagrant/src/github.com
git clone https://github.com/gohugoio/hugo.git

# Build Hugo blog engine
cd /home/vagrant/src/github.com/hugo
hugoCGO_ENABLED=1 go install --tags extended

# Set plug Vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



# Set profile environment paths
cat /config/.profile > ~/.profile
cat /config/.vimrc > ~/.vimrc
