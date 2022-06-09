#!/bin/bash

#update & upgrade kali
echo -e "Updating Kali"
sudo apt-get update && sudo apt-get upgrade

#download apps/tools
echo -e "Tools will be downloaded in /opt/ folder"
echo -e "Downloading pimpmykali"
wget https://github.com/Dewalt-arch/pimpmykali/blob/be57a43127a53355454bb90033e6dec4d9075825/pimpmykali.sh -P /opt/

echo -e "Installing stegseek"
sudo apt-get install ./stegseek_0.6-1.deb

echo -e "Installing gobuster"
go install -v https://github.com/OJ/gobuster/v3@latest

echo -e "Installing pimpmykali"
./opt/pimpmykali/pimpmykali.sh