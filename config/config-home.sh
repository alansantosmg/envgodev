#! /bin/bash

echo 
# Make src projects dirs
#mkdir src && mkdir src/github.com
#echo
#echo "Created src home dirs"
#echo 

# Set profile environment paths
cat /config/.profile > /home/vagrant/.profile
cat /config/.bashrc > /home/vagrant/.bashrc
echo 
echo "Home profile adjusted."