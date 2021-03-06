#!/bin/bash

# Script Start ##

sudo apt-get install -y rpi-update
sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install -y vim

# From Andy's notes
sudo apt-get install -y lxc
sudo apt-get install -y busybox-static
sudo apt-get install -y swig

sudo apt-get install -y python-dev
sudo apt-get install -y python-pip
sudo apt-get install -y python-software-properties
sudo apt-get install -y nodejs npm node-semver
sudo apt-get install -y python-pexpect

sudo apt-get install -y python-twisted

# For Bluetooth LE
sudo apt-get install -y libglib2.0-dev 
sudo apt-get install -y libdbus-1-dev 
sudo apt-get install -y libusb-dev 
sudo apt-get install -y libudev-dev 
sudo apt-get install -y libical-dev
sudo apt-get install -y systemd 
sudo apt-get install -y libreadline-dev
sudo apt-get install -y screen
sudo apt-get install -y hostapd
sudo apt-get install -y hostap-utils
sudo apt-get install -y iw
sudo apt-get install -y dnsmasq

mkdir /home/bridge/src
cd /home/bridge/src
wget https://www.kernel.org/pub/linux/bluetooth/bluez-5.14.tar.gz
tar xvfz bluez-5.14.tar.gz
cd bluez-5.14.tar.gz
./configure --prefix=/usr --mandir=/usr/share/man --sysconfdir=/etc --localstatedir=/var --disable-systemd
sudo make
sudo make install

# nodejs
cd /home/bridge/src
sudo mkdir /opt/node
wget http://nodejs.org/dist/v0.10.2/node-v0.10.2-linux-arm-pi.tar.gz
tar xvzf node-v0.10.2-linux-arm-pi.tar.gz
sudo cp -r node-v0.10.2-linux-arm-pi/* /opt/node

pip install httplib2
#pip install dataset
pip install dropbox
