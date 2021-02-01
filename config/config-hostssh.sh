#! /bin/bash

echo
echo "Adding host ssh key to guest..."
echo 
# copy host ssh key to authorized hosts list
cat /config/id_rsa.pub >> ~/.ssh/authorized_keys
