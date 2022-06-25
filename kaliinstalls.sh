#!/bin/bash

#update & upgrade kali
echo "Updating Kali"
sudo apt-get update

#download apps/tools
echo "Tools will be downloaded in /opt/ folder"
echo "Downloading guest installations"
sudo apt install -y --reinstall virtualbox-guest-x11

echo "Downloading pimpmykali"
wget https://github.com/Dewalt-arch/pimpmykali/blob/be57a43127a53355454bb90033e6dec4d9075825/pimpmykali.sh -P /opt/

echo "Installing stegseek"
sudo apt-get install ./stegseek_0.6-1.deb

echo "Installing gobuster"
sudo apt-get install -v https://github.com/OJ/gobuster/v3@latest

echo "Installing pimpmykali"
./opt/pimpmykali/pimpmykali.sh

echo "rebooting"
sudo reboot -f
