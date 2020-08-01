#!/bin/bash
apt-get update
apt-get -y install kali-linux-wireless
apt-get -y install git
apt-get -y install libcurl4-openssl-dev 
apt-get -y install libssl-dev
apt-get -y install zlib1g-dev
apt-get -y install libpcap-dev
git clone https://github.com/ZerBea/hcxtools.git
git clone https://github.com/ZerBea/hcxdumptool.git
cd hcxtools
make
make install
cd ~
cd hcxdumptool
make
make install
cd ~
apt-get -y install kali-tools-passwords
git clone https://github.com/hashcat/hashcat.git
cd hashcat
make
make install
gunzip /usr/share/wordlists/rockyou.txt.gz
apt-get install -y firmware-ralink
