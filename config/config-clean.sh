#! /bin/bash

echo
echo "cleaning..."
echo
# remove install packages
rm -rf /home/vagrant/go1.15.7.linux-amd64.tar.gz
apt-get -y remove gcc g++ make
apt-get -y autoremove
apt-get -y autoclean
rm -rf /home/vagrant/hugo
echo 

#echo "Removing swap file..."
#echo
# Remove swap file
# does the swap file exist?
#grep -q "swapfile" /etc/fstab

# if it does then remove it
#if [ $? -eq 0 ]; then
#	echo 'swapfile found. Removing swapfile.'
#	sed -i '/swapfile/d' /etc/fstab
#	echo "3" > /proc/sys/vm/drop_caches
#	swapoff -a
#	rm -f /swapfile
#else
#	echo 'No swapfile found. No changes made.'
#fi

# output results to terminal
#cat /proc/swaps
#cat /proc/meminfo | grep Swap

echo 
echo "Setup finished."
echo "run vagrant ssh (hostname) to get in guest machines"
echo "Enjoy!"
